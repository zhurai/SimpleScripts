:: Sync StartupScripts (Autoit) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\misc-scripts\AutoIt\StartupScripts" "D:\PersonalSync\Scripts\Autoit" /MIR /R:x /W:x
:: Sync StartupScripts (AHK) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\misc-scripts\AutoHotKey\StartupScripts" "D:\PersonalSync\Scripts\AutoHotKey" /MIR /R:x /W:x

:: Sync Robocopy Script (BAT) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\misc-scripts\BAT" "D:\PersonalSync\Scripts\Sync" "PC1-Robocopy Sync.bat"  /MIR /R:x /W:x
:: Sync Bluetooth Scripts (BAT) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\misc-scripts\BAT\Bluetooth" "D:\PersonalSync\Scripts\Bluetooth" /MIR /R:x /W:x

:: Sync Livestream Assets (Livestream Git) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\livestream" "D:\PersonalSync\Livestream" /MIR /R:x /W:x
:: Sync Task Warrior Scripts (Taskwarrior-Scripts) to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\taskwarrior-scripts" "D:\PersonalSync\Applications\TaskWarrior\scripts" /MIR /R:x /W:x /XD .git /XD commit-scripts /XF .gitignore /XF .gitattributes /XD .old

:: Sync KP (PersonalSync) to Google Drive
ROBOCOPY "D:\PersonalSync\Applications\KP" "D:\GoogleDrive\Personal Sync\KP" /MIR /R:x /W:x
:: Sync Scripts to GoogleDrive
ROBOCOPY "D:\PersonalSync\Scripts" "D:\GoogleDrive\Personal Sync\Scripts" /MIR /R:x /W:x