#!/bin/sh

# Read the settings.
. ./settings.sh

download_installer() {
    if [ ! -f "${INSTALL_JAR}" ]; then
        echo "Downloading Cleanroom installer (${CLEANROOM_VERSION})..."
        curl -fsSL -o "${INSTALL_JAR}" "https://github.com/CleanroomMC/Cleanroom/releases/download/${CLEANROOM_VERSION}/${INSTALL_JAR}"
    fi
}

install_files() {
    java -jar ${INSTALL_JAR} --installServer > /dev/null 2>&1
}

download_installer
echo "Installing Cleanroom and required jars."
install_files
echo "Done!"
