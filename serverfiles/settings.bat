REM Don't edit these values unless you know what you are doing.
set INSTALL_JAR=forge-1.12.2-14.23.5.2860-installer.jar
set SERVER_JAR=forge-1.12.2-14.23.5.2860.jar

REM You can edit these values if you wish.
set MIN_RAM=4096M
set MAX_RAM=8192M
set MAX_MetaspaceSize=512M
set JAVA_PARAMETERS=-Dterminal.jline=false -Dterminal.ansi=true -XX:+UseG1GC -XX:MaxGCPauseMillis=130 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=28 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=20 -XX:G1MixedGCCountTarget=3 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=0 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -XX:G1SATBBufferEnqueueingThresholdPercent=30 -XX:G1ConcRSHotCardLimit=16 -XX:G1ConcRefinementServiceIntervalMillis=150 -Dlog4j.configurationFile=log4j2_112-116.xml
