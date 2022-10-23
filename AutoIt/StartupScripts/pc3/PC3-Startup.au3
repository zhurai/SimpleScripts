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

; SecureCRT
Run("C:\Program Files\VanDyke Software\SecureCRT\SecureCRT.exe")
Sleep(15000)

; Firefox
Run ("C:\Program Files\Mozilla Firefox\firefox.exe")
; Discord
Run ('C:\Users\zhurai\AppData\Local\Discord\Update.exe' & ' --processStart Discord.exe')
Sleep (15000)
