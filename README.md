
# How to Run a Script on Mac

## Steps
1. Open a text editor on your Mac, such as TextEdit or any code editor.
2. Create a new file and paste the following script into the file:

```bash
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
```

3. Save the file with a `.sh` extension. For example, you can save it as `trial_reset_script.sh`.
4. Open the Terminal app on your Mac.
5. Change to the directory where you saved the script using the `cd` command.
6. Make the script executable by running the following command:

```bash
chmod +x trial_reset_script.sh
```

7. Run the script by entering the following command in the Terminal:

```bash
./trial_reset_script.sh
```

## Conclusion
This guide should help you run a script on your Mac easily. Make sure to review the script contents and understand what it does before executing it.

Feel free to modify the script according to your specific requirements. For more advanced usage, consult the relevant documentation or resources.

Happy scripting!
