#!/bin/sh
# Copyright (c)2019, 2020 chris1111 All Rights reserved.
apptitle="Catalina-Recovery-HD-Partition"
version="1.0"
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
echo "-------------------------------------"
# Declare some VARS
APP_NAME=Recovery-HD-Partition
# Delete the app if exist
if [ -d "${3}./Recovery-HD-Partition.app" ]; then
	rm -rf "${3}./Recovery-HD-Partition.app"
fi

if [ -d "${3}./Recovery HD Partition.app" ]; then
	rm -rf "${3}./Recovery HD Partition.app"
fi
mkdir -vp ${APP_NAME}.app/Contents/MacOS ${APP_NAME}.app/Contents/Resources 
# Create the folders.
APP_NAME=Recovery-HD-Partition.app
# Copy Resources to the right place
cp -r Contents/Resources/AppSettings.plist "$APP_NAME"/Contents/Resources
cp -r Contents/Resources/dm "$APP_NAME"/Contents/Resources
cp -r Contents/Resources/Credits.rtf "$APP_NAME"/Contents/Resources
cp -r Contents/Resources/rsync "$APP_NAME"/Contents/Resources
cp -r Contents/Resources/MainMenu.nib "$APP_NAME"/Contents/Resources
cp -rp Contents/Resources/script "$APP_NAME"/Contents/Resources
cp -rp Contents/MacOS/"Recovery HD Partition" "$APP_NAME"/Contents/MacOS
cp -rp Contents/Info.plist "$APP_NAME"/Contents
cp -r Contents/Resources/AppIcon.icns "$APP_NAME"/Contents/Resources
Sleep 1
# Test open app
mv Recovery-HD-Partition.app "Recovery HD Partition.app"
Sleep 1
open 'Recovery HD Partition.app'