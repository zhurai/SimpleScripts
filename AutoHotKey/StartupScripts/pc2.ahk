#SingleInstance Force
#NoEnv
#EscapeChar \
SendMode Input 
SetWorkingDir %A_ScriptDir%

; If the script is not elevated, relaunch as administrator and kill current instance:
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try ; leads to having the script re-launching itself as administrator
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

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
