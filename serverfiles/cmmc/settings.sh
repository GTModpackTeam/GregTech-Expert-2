# Don't edit these values unless you know what you are doing.
export CLEANROOM_VERSION="CLEANROOMVERSION"
export INSTALL_JAR="cleanroom-${CLEANROOM_VERSION}-installer.jar"
export SERVER_JAR="cleanroom-${CLEANROOM_VERSION}-universal.jar"

# You can edit these values if you wish.
export MIN_RAM="4096M"
export MAX_RAM="8192M"
export JAVA_PARAMETERS="-Dfile.encoding=UTF-8 -Dterminal.jline=false -Dterminal.ansi=true -XX:+UseG1GC -XX:MaxGCPauseMillis=130 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=28 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=20 -XX:G1MixedGCCountTarget=3 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=0 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -XX:G1SATBBufferEnqueueingThresholdPercent=30 -XX:G1ConcRSHotCardLimit=16 -XX:G1ConcRefinementServiceIntervalMillis=150"
