tell application "Terminal"
    do script "source __PREFIX__/bin/activate && echo \"Using Python:\" `which python` && echo \"This is\" `mne --version`"
    activate
end tell
