#RequireAdmin

; AutoHotkey
ShellExecute('C:\PersonalSync\Scripts\AutoHotKey\pc2.ahk')
; VoiceMeeter
Run("C:\Program Files (x86)\VB\Voicemeeter\voicemeeterpro.exe")
; Window Manager
Run("C:\Program Files (x86)\WindowManager\WindowManager.exe")
; Greenshot
Run("C:\Program Files\Greenshot\Greenshot.exe","C:\Program Files\Greenshot")
Sleep (15000)

; Synergy
Run("C:\Program Files\Synergy\synergy.exe")
Sleep (15000)

; Syncthing
Run("C:\Personal\Programs\syncthing\syncthing.exe --no-console --no-browser","C:\Personal\Programs\syncthing")
Sleep (15000)

; Sublime Editor
Run("C:\Program Files\Sublime Text\sublime_text.exe")
Sleep (15000)

; Firefox
Run ("C:\Program Files\Mozilla Firefox\firefox.exe")
Sleep (15000)

; MusicBee
Run("C:\Program Files (x86)\MusicBee\MusicBee.exe", "C:\Program Files (x86)\MusicBee")
Sleep (15000)

; Obsidian.md
Run("C:\Users\zhurai\AppData\Local\Obsidian\Obsidian.exe","C:\Users\zhurai\AppData\Local\Obsidian")
Sleep (15000)

; OBS
Run("C:\Program Files\obs-studio\bin\64bit\obs64.exe", "C:\Program Files\obs-studio\bin\64bit")
Sleep (15000)

; Chatty
Run("C:\Program Files (x86)\Chatty\Chatty.exe")
Sleep (15000)

; Discord
Run ('C:\Users\zhurai\AppData\Local\Discord\Update.exe' & ' --processStart Discord.exe')
Sleep (15000)

; GFAlarm Update
If WinExists("Update","") Then
    ControlClick("Update","","[CLASS:Button; INSTANCE:1]","left",1) ; Update Button
    Sleep (15000)
    WinActivate("소녀전선 알리미 업데이터","")
    WinMove("소녀전선 알리미 업데이터","",390,190,500,300)
    Sleep (15000)
    MouseClick("left",839,243)
    Sleep (15000)
    While NOT WinExists("Girls Frontline Alarm")
        ; While it does not exist continue looping
        Sleep(1000)
    WEnd
EndIf
Sleep (15000)

; Hide Stuff
Opt("SendKeyDownDelay", 100)
Send ('^!1')
