#SingleInstance Force
#NoEnv
#EscapeChar \
SendMode Input 
SetWorkingDir %A_ScriptDir%

; Global
LWin & F12::Send {PrintScreen}
; [Screenshot]

; Bluestacks
#IfWinActive ahk_exe HD-Player.exe

f1:: 
Send, ^+{F1}
return
; [mute]

f2:: 
Send, ^+{F2}
return
; [macros]
