#RequireAdmin

; Obsidian.md
ProcessClose("Obsidian.exe")

; Disconnect Bluetooth Device
Run(@ComSpec & ' /k C:\PersonalSync\Scripts\Bluetooth\Bluetooth-Disconnect.bat')
