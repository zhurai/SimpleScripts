:: Sync Autoit Startup Automation Scripts to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\StartupScripts\AutoIt\all" "D:\PersonalSync\Scripts\Autoit\all" /MIR /R:x /W:x
ROBOCOPY "D:\GitHub\personal\StartupScripts\AutoIt\pc1" "D:\PersonalSync\Scripts\Autoit\pc1" /MIR /R:x /W:x
ROBOCOPY "D:\GitHub\personal\StartupScripts\AutoIt\pc2" "D:\PersonalSync\Scripts\Autoit\pc2" /MIR /R:x /W:x
ROBOCOPY "D:\GitHub\personal\StartupScripts\AutoIt\pc3" "D:\PersonalSync\Scripts\Autoit\pc3" /MIR /R:x /W:x
:: Sync AutoHotkey Scripts to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\StartupScripts\AutoHotkeyScripts" "D:\PersonalSync\Scripts\AutoHotKey" /MIR /R:x /W:x
:: Sync Robocopy Scripts to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\misc-scripts\BAT\Robocopy" "D:\PersonalSync\Scripts\Sync" /MIR /R:x /W:x
:: Sync Livestream Assets to PersonalSync (Syncthing)
ROBOCOPY "D:\GitHub\personal\livestream" "D:\PersonalSync\Livestream" /MIR /R:x /W:x
:: Sync KP to GoogleDrive
ROBOCOPY "D:\PersonalSync\Applications\KP" "D:\GoogleDrive\Personal Sync\KP" /MIR /R:x /W:x
:: Sync Scripts to GoogleDrive
ROBOCOPY "D:\PersonalSync\Scripts" "D:\GoogleDrive\Personal Sync\Scripts" /MIR /R:x /W:x
:: Sync Bluetooth Scripts
ROBOCOPY "D:\GitHub\personal\misc-scripts\BAT\Bluetooth" "D:\PersonalSync\Scripts\Bluetooth" /MIR /R:x /W:x
:: Sync Task Warrior Scripts
ROBOCOPY "D:\GitHub\personal\taskwarrior-scripts" "D:\PersonalSync\Applications\TaskWarrior\scripts" /MIR /R:x /W:x /XD .git /XD commit-scripts /XF .gitignore /XF .gitattributes /XD .old

