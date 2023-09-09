#!/bin/bash

# Wait for the desktop to load
sleep 0.1

# Lock the screen
# /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend # apparently path to this file has changed in newer version of macos

/usr/bin/pmset displaysleepnow
sleep 5
exit
