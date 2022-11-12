#SingleInstance Force
#NoEnv
#EscapeChar \
SendMode Input 
SetWorkingDir %A_ScriptDir%

; Global 
; - Screenshot
LWin & F12::Send {PrintScreen} 
Return
; - Disable Feedback Hub, redirect to find
#f::Send ^p
Return
; - Disable Cortana, redirect to copy
#c::Send ^c
Return
; - Disable Clipboard History, redirect to paste
#v::Send ^v 
Return

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
