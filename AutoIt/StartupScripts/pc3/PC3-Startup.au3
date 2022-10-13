#include <Array.au3>

; AutoHotKey
ShellExecute('C:\PersonalSync\Scripts\AutoHotKey\pc3.ahk')
; VoiceMeeter
Run("C:\Program Files (x86)\VB\Voicemeeter\voicemeeterpro.exe")
; Synergy
Run("C:\Program Files\Synergy\synergy.exe")
Sleep(15000)

; Syncthing
Run("C:\Personal\Programs\syncthing\syncthing.exe --no-console --no-browser","C:\Personal\Programs\syncthing")
; Keepass
Run("C:\Program Files\KeePassXC\KeePassXC.exe")
Sleep(15000)

; WSL (must use 64bit autoit to run the wsl binary)
RunWait("C:\Program Files (x86)\AutoIt3\AutoIt3_x64.exe C:\PersonalSync\Scripts\AutoIt\pc3\PC3-WSL-64bit.au3")
Sleep(15000)

; Firefox
Run ("C:\Program Files\Mozilla Firefox\firefox.exe")
; Discord
Run ('C:\Users\zhurai\AppData\Local\Discord\Update.exe' & ' --processStart Discord.exe')
Sleep (15000)
