# Windows Admin Suite

This is a pretty simple batch script that helps with local Windows privilege escalation via replacing various binaries with cmd.exe to obtain a Local System command prompt on the login screen.

It can be placed in the root directory of a Windows installation/recovery USB drive. Then when booted, press Shift+F10 to open the recovery Command Prompt and navigate to the corresponding drive with was.bat to run it. Granted, there are definitely better tools out there that don't deal with the ridiculously long boot time and completely automating the script to run on startup. However, this takes pretty minimal effort to set up and can be handy if you already have Windows installation media.