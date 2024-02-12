#!/bin/bash
# Minecraft service that starts the server in a tmux session.
# https://github.com/tier940/minecraft-tmux

JAVA_PATH="/usr/lib/jvm/java-8-openjdk/bin/java"
TMUX_SOCKET="steam"
TMUX_SESSION="gte2"
MC_HOME="/home/minecraft/gte2/"
MC_JAR_FILE="forge-1.12.2-14.23.5.2860.jar"
MC_MIN_RAM="4G"
MC_MAX_RAM="8G"
MC_JVM_PARAMETERS="-XX:MaxMetaspaceSize=512M -Dterminal.jline=false -Dterminal.ansi=true -XX:MaxRAMPercentage=95.0 -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Dterminal.jline=false -Dterminal.ansi=true -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+UseNUMA -XX:+CMSParallelRemarkEnabled -XX:MaxTenuringThreshold=15 -XX:MaxGCPauseMillis=30 -XX:GCPauseIntervalMillis=150 -XX:+UseAdaptiveGCBoundary -XX:-UseGCOverheadLimit -XX:+UseBiasedLocking -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15 -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -XX:+UseFastAccessorMethods -XX:+UseCompressedOops -XX:+OptimizeStringConcat -XX:+AggressiveOpts -XX:ReservedCodeCacheSize=2048m -XX:+UseCodeCacheFlushing -XX:SoftRefLRUPolicyMSPerMB=10000 -XX:ParallelGCThreads=10 -Djava.net.preferIPv4Stack=true -Dlog4j.configurationFile=log4j2_112-116.xml"

is_server_running() {
    /usr/bin/tmux -L ${TMUX_SOCKET} has-session -t ${TMUX_SESSION} > /dev/null 2>&1
    return ${?}
}

mc_command() {
    cmd="$1"
    /usr/bin/tmux -L ${TMUX_SOCKET} send-keys -t ${TMUX_SESSION}.0 "$cmd" ENTER
    return ${?}
}

start_server() {
    if is_server_running; then
        echo "Server already running"
        return 1
    else
        echo "Starting minecraft server in tmux session"
        /usr/bin/tmux -L ${TMUX_SOCKET} new-session -c ${MC_HOME} -s ${TMUX_SESSION} -d ${JAVA_PATH} -Xms${MC_MIN_RAM} -Xmx${MC_MAX_RAM} ${MC_JVM_PARAMETERS} -jar ${MC_HOME}$MC_JAR_FILE
        return ${?}
    fi
}

stop_server() {
    if ! is_server_running; then
        echo "Server is not running!"
        return 1
    else
        # Warn players
        echo "Warning players"
        mc_command "title @a times 3 14 3"
        for i in {60..1}; do
            mc_command "title @a subtitle {\"text\":\"in ${i} seconds\",\"color\":\"gray\"}"
            mc_command "title @a title {\"text\":\"Shutting down\",\"color\":\"dark_red\"}"
            echo "Server stop in ${i} seconds"
            sleep 1
        done

        # Issue shutdown
        echo "Save all"
        mc_command "save-all"
        sleep 0
        echo "Stopping server"
        mc_command "stop"
        if [[ ${?} -ne 0 ]]; then
            echo "Failed to send stop command to server"
            return 1
        fi

        # Wait for server to stop
        wait=0
        while is_server_running; do
            sleep 1

            wait=$((wait+1))
            if [ ${wait} -gt 90 ]; then
                echo "Could not stop server, timeout"
                return 1
            fi
        done
        return 0
    fi
}

restart_server() {
    if ! is_server_running; then
        echo "Server is not running!"
        return 1
    else
        if stop_server; then
            start_server
            return ${?}
        else
            echo "Failed server restart"
            return 1
        fi
    fi
}

reload_server() {
    /usr/bin/tmux -L ${TMUX_SOCKET} send-keys -t ${TMUX_SESSION}.0 "reload" ENTER
    return ${?}
}

attach_session() {
    if ! is_server_running; then
        echo "Cannot attach to server session, server not running"
        return ${?}
    else
        /usr/bin/tmux -L ${TMUX_SOCKET} attach-session -t ${TMUX_SESSION}
        return 0
    fi
}

case "$1" in
    start)
        start_server
        attach_session
        exit ${?}
        ;;
    stop)
        stop_server
        exit ${?}
        ;;
    restart)
        restart_server
        exit ${?}
        ;;
    reload)
        reload_server
        exit ${?}
        ;;
    attach)
        attach_session
        exit ${?}
        ;;
    *)
        echo "Usage: ${0} {start|stop|restart|reload|attach}"
        exit 2
        ;;
esac
