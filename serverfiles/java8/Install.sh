#!/bin/sh

# Read the settings.
. ./settings.sh

download_installer() {
    if [ ! -f "${INSTALL_JAR}" ]; then
        echo "Downloading Forge installer (${FORGE_VERSION})..."
        curl -fsSL -o "${INSTALL_JAR}" "https://maven.minecraftforge.net/net/minecraftforge/forge/${FORGE_VERSION}/${INSTALL_JAR}"
    fi
}

install_files() {
    java -jar ${INSTALL_JAR} --installServer > /dev/null 2>&1
}

download_installer
echo "Installing Forge and required jars."
install_files
echo "Done!"
