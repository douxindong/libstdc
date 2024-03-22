#!/bin/bash
#USAGE: sudo bash install_xcode15.sh
xcode_path="/Applications/Xcode15.app"

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

sudo cp 1/* $xcode_path/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/
sudo cp 2/* $xcode_path/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/
sudo cp 3/* $xcode_path/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/
sudo cp 4/* $xcode_path/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/