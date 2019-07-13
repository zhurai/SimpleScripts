;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv
#SingleInstance
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTimer, TimerCleanup, 500

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Menu Settings
Menu, Tray, NoStandard
;Menu, Tray, Add, , , +Break
Menu, Tray, Add, [Vysor], VysorMenu
Menu, Tray, Add, Dragalia Lost, DLMenu
Menu, Tray, Add, Dragalia Lost BlazeOn, DLMenu2
Menu, Tray, Add, Another Eden, AEMenu
Menu, Tray, Add, , , +Break
Menu, Tray, Add, [Standard], StandardMenu
Menu, Tray, Add, Reload, ReloadMenu
Menu, Tray, Add, Edit, EditMenu
Menu, Tray, Add, Suspend, SuspendMenu
Menu, Tray, Add, Exit, ExitMenu
return

; Standard Menu Stuff
StandardMenu:
Menu := "Standard"
return

ReloadMenu:
Reload
return

EditMenu:
Edit
return

SuspendMenu:
Menu, Tray, ToggleCheck, Suspend
Suspend, Toggle
return

ExitMenu:
Process, close, %PIDVysorDL%
Process, close, %PIDVysorDL2%
Process, close, %PIDVysorAE%
ExitApp
return

; Vysor Menu Stuff
VysorMenu:
Menu, Tray, UnCheck, Dragalia Lost
Menu, Tray, UnCheck, Dragalia Lost BlazeOn
Menu, Tray, UnCheck, Another Eden
WinSetTitle, mobile - dragalia,  , mobile
WinSetTitle, mobile - dragalia2,  , mobile
WinSetTitle, mobile - anothereden,  , mobile
WinMove, mobile, , 583, 0, 478, 1026
Process, close, %PIDVysorDL%
Process, close, %PIDVysorDL2%
Process, close, %PIDVysorAE%
return

DLMenu:
Menu, Tray, Check, Dragalia Lost
Menu, Tray, UnCheck, Dragalia Lost BlazeOn
Menu, Tray, UnCheck, Another Eden
WinSetTitle, mobile - dragalia,  , mobile
WinSetTitle, mobile - dragalia2,  , mobile
WinSetTitle, mobile - anothereden,  , mobile
WinMove, mobile, , 583, 0, 478, 1026
WinSetTitle, mobile,  , mobile - dragalia
Process, close, %PIDVysorDL2%
Process, close, %PIDVysorAE%
Run, "games-vysor-DL.ahk", , , PIDVysorDL
return

DLMenu2:
Menu, Tray, UnCheck, Dragalia Lost
Menu, Tray, Check, Dragalia Lost BlazeOn
Menu, Tray, UnCheck, Another Eden
WinSetTitle, mobile - dragalia,  , mobile
WinSetTitle, mobile - dragalia2,  , mobile
WinSetTitle, mobile - anothereden,  , mobile
WinMove, mobile, , 583, 0, 478, 1026
WinSetTitle, mobile,  , mobile - dragalia2
Process, close, %PIDVysorDL%
Process, close, %PIDVysorAE%
Run, "games-vysor-DL2.ahk", , , PIDVysorDL2
return

AEMenu:
Menu, Tray, UnCheck, Dragalia Lost
Menu, Tray, UnCheck, Dragalia Lost BlazeOn
Menu, Tray, Check, Another Eden
WinSetTitle, mobile - dragalia,  , mobile
WinSetTitle, mobile - dragalia2,  , mobile
WinSetTitle, mobile - anothereden,  , mobile
WinMove, mobile, , 582, 351, 975, 495
WinSetTitle, mobile,  , mobile - anothereden
Process, close, %PIDVysorDL%
Process, close, %PIDVysorDL2%
Run, "games-vysor-AE.ahk", , , PIDVysorAE
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TimerCleanup:

Process,Exist,%PIDVysorDL%
If (ErrorLevel = 0) 
{
	Menu, Tray, UnCheck, Dragalia Lost
}

Process,Exist,%PIDVysorDL2%
If (ErrorLevel = 0) 
{
	Menu, Tray, UnCheck, Dragalia Lost BlazeOn
}

Process,Exist,%PIDVysorAE%
If (ErrorLevel = 0) 
{
	Menu, Tray, UnCheck, Another Eden
}

return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Enable Script / Disable Script (Global)
#F2::
Pause
Suspend
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



	

	