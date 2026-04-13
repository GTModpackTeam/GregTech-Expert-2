@echo off

call settings.bat

if not exist "%INSTALL_JAR%" (
    echo Downloading Forge installer ^(%FORGE_VERSION%^)...
    powershell -Command "Invoke-WebRequest -Uri 'https://maven.minecraftforge.net/net/minecraftforge/forge/%FORGE_VERSION%/%INSTALL_JAR%' -OutFile '%INSTALL_JAR%'"
)

:install_files
echo Installing Forge and required jars.
java -jar %INSTALL_JAR% --installServer > NUL 2>&1
echo Done!
exit /B
