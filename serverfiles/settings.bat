REM Don't edit these values unless you know what you are doing.
set INSTALL_JAR=forge-1.12.2-14.23.5.2860-installer.jar
set SERVER_JAR=forge-1.12.2-14.23.5.2860.jar

REM You can edit these values if you wish.
set MIN_RAM=4096M
set MAX_RAM=8192M
set MAX_MetaspaceSize=512M
set JAVA_PARAMETERS=-XX:MaxRAMPercentage=95.0 -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Dterminal.jline=false -Dterminal.ansi=true -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+UseNUMA -XX:+CMSParallelRemarkEnabled -XX:MaxTenuringThreshold=15 -XX:MaxGCPauseMillis=30 -XX:GCPauseIntervalMillis=150 -XX:+UseAdaptiveGCBoundary -XX:-UseGCOverheadLimit -XX:+UseBiasedLocking -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15 -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -XX:+UseFastAccessorMethods -XX:+UseCompressedOops -XX:+OptimizeStringConcat -XX:+AggressiveOpts -XX:ReservedCodeCacheSize=2048m -XX:+UseCodeCacheFlushing -XX:SoftRefLRUPolicyMSPerMB=10000 -XX:ParallelGCThreads=10 -Djava.net.preferIPv4Stack=true -Dlog4j.configurationFile=log4j2_112-116.xml
