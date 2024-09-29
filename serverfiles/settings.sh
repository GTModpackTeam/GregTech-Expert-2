# Don't edit these values unless you know what you are doing.
export INSTALL_JAR="forge-1.12.2-14.23.5.2860-installer.jar"
export SERVER_JAR="forge-1.12.2-14.23.5.2860.jar"

# You can edit these values if you wish.
export MIN_RAM="4096M"
export MAX_RAM="8192M"
export Max_MetaspaceSize="512M"
export JAVA_PARAMETERS="-Dterminal.jline=false -Dterminal.ansi=true -XX:MaxRAMPercentage=95.0 -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:+DisableExplicitGC -XX:+UseG1GC -XX:MaxTenuringThreshold=15 -XX:MaxGCPauseMillis=30 -XX:GCPauseIntervalMillis=150 -XX:InitiatingHeapOccupancyPercent=45 -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -XX:+UseFastAccessorMethods -XX:+UseCompressedOops -XX:+OptimizeStringConcat -XX:ReservedCodeCacheSize=2048m -XX:+UseCodeCacheFlushing -XX:SoftRefLRUPolicyMSPerMB=10000 -Djava.net.preferIPv4Stack=true -Dlog4j.configurationFile=log4j2_112-116.xml"
