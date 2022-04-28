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
LWin & F12::Send {PrintScreen}
; [Screenshot]

; Steam Another Eden
#IfWinActive ahk_exe AnotherEden.exe

f1:: 
Run,"C:\\Program Files (x86)\\AutoIt3\\AutoIt3.exe" "C:\\Users\\zhurai\\Google Drive\\Personal Sync\\Scripts-Autoit\\volume.au3"
; [mute]