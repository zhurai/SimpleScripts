#RequireAdmin
#include <Array.au3>
#include <AutoItConstants.au3>

; Window Manager
Run("C:\Program Files (x86)\WindowManager\WindowManager.exe")
; Voicemeeter
Run("C:\Program Files (x86)\VB\Voicemeeter\voicemeeterpro.exe")
; Synergy
Run("C:\Program Files\Synergy\synergy.exe")
; Syncthing
Run("D:\PersonalPrograms\syncthing\syncthing.exe --no-console --no-browser","D:\PersonalPrograms\syncthing")
; Wait
Sleep (15000)

; AutoHotKey
ShellExecute('D:\PersonalSync\Scripts\AutoHotKey\pc1.ahk')
; Greenshot
Run("C:\Program Files\Greenshot\Greenshot.exe")
; Keepass
Run("C:\Program Files\KeePassXC\KeePassXC.exe")
; PolyMC
Run("C:\Minecraft\PolyMC\polymc.exe", "C:\Minecraft\PolyMC")
; Wait
Sleep (15000)

; Launchy
Run("C:\Program Files (x86)\Launchy\Launchy.exe /show")
; Steam
Run("C:\Program Files (x86)\Steam\Steam.exe","C:\Program Files (x86)\Steam")
; Blizzard Launcher
Run("D:\BlizzardLauncher\Battle.net\Battle.net Launcher.exe","D:\BlizzardLauncher\Battle.net")
; SecureCRT
Run("C:\Program Files\VanDyke Software\SecureCRT\SecureCRT.exe")
; Wait
Sleep (15000)

; Hide Stuff
Opt("SendKeyDownDelay", 100)
Send ('^!1')
