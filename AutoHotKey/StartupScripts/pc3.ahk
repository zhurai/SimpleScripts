#SingleInstance Force
#NoEnv
#EscapeChar \
SendMode Input 
SetWorkingDir %A_ScriptDir%

; Global 
; - Screenshot
LWin & F12::Send {PrintScreen} 
; - Disable Feedback Hub, redirect to find
#f::Send ^p
; - Disable Cortana, redirect to copy
#c::Send ^c
; - Disable Clipboard History, redirect to paste
#v::Send ^v 

; Firefox
; - Disable "BIDI text direction" while attempting to cut and paste
#IfWinActive ahk_exe firefox.exe
^+x::
Return

; Counter Side
; - Toggle Mute
#IfWinActive ahk_exe CounterSide.exe
f1:: 
Send, m
return
