#!/bin/bash

# Function to write logs
write_log() {
    echo "$(date): $1"
}

# Display log in the terminal
echo "Script execution started at $(date)"

# Remove Trial Data from files
write_log "Removing trial data from files..."
rm -rf ~/Library/Preferences/$'.\xe2\x80\xa6\x45\xcc\x80\x7c\x56\x49\xcc\x80\x67\x53\xc2\xa0'
defaults write ~/Library/Preferences/de.appsolute.mamppro.plist regData -data 00

# Remove other Folders and Files (not required)
write_log "Removing other folders and files..."
rm -rf ~/Library/Application\ Support/de.appsolute.mamppro
rm -rf ~/Library/Caches/de.appsolute.mamppro

# Restart Services
write_log "Restarting services..."
sudo killall de.appsolute.mampprohelper
sudo killall cfprefsd

echo "Script execution completed at $(date)"
