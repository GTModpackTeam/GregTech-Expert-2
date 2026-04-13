@echo off

call settings.bat

if not exist "%INSTALL_JAR%" (
    echo Downloading Cleanroom installer ^(%CLEANROOM_VERSION%^)...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/CleanroomMC/Cleanroom/releases/download/%CLEANROOM_VERSION%/%INSTALL_JAR%' -OutFile '%INSTALL_JAR%'"
)

:install_files
echo Installing Cleanroom and required jars.
java -jar %INSTALL_JAR% --installServer > NUL 2>&1
echo Done!
exit /B
