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
:: Sync Task Warrior Config to PersonalSync (Syncthing) and Dotfiles (GitHub)
ROBOCOPY "D:\PersonalSync\Applications\TaskWarrior" "D:\GitHub\personal\dotfiles\taskwarrior" "extra.taskrc" /MIR /R:x /W:x  
    :: regular .taskrc shouldn't need to change
:: Sync WindowManager Config to Dotfiles (GitHub)
ROBOCOPY "D:\PersonalSync\Applications\WindowManager" "D:\GitHub\personal\dotfiles\window-manager" /MIR /R:x /W:x /XF "WindowManager-Hana Fu.DeskSoftLicense" /XF update-git.py /XF gitpush.ps1
:: Sync Newsboat Config to Dotfiles (GitHub)
ROBOCOPY "D:\PersonalSync\Applications\Newsboat" "D:\GitHub\personal\dotfiles\newsboat" /MIR /R:x /W:x /XF history.cmdline /XF cache.db /XF cache.db.lock
:: Sync Obsidian Automation Scripts to Obsidian 0.01 and 0.02
ROBOCOPY "D:\GitHub\personal\obsidian-scripts\scripts" "D:\PersonalSync\Applications\Obsidian\0 Management\01 Automation Scripts" /MIR /R:x /W:x 
ROBOCOPY "D:\GitHub\personal\obsidian-scripts\templates" "D:\PersonalSync\Applications\Obsidian\0 Management\02 Automation Templates" /MIR /R:x /W:x 

:: Sync KP (PersonalSync) to Google Drive
ROBOCOPY "D:\PersonalSync\Applications\KP" "D:\GoogleDrive\Personal Sync\KP" /MIR /R:x /W:x
:: Sync Scripts to GoogleDrive
ROBOCOPY "D:\PersonalSync\Scripts" "D:\GoogleDrive\Personal Sync\Scripts" /MIR /R:x /W:x
