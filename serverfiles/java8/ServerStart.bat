@echo off

call settings.bat

:start_server
echo Starting GregTech Expert Server...
java -server -Xms%MIN_RAM% -Xmx%MAX_RAM% -XX:MaxMetaspaceSize=%MAX_MetaspaceSize% %JAVA_PARAMETERS% -jar %SERVER_JAR% nogui
pause
exit /B

goto start_server
