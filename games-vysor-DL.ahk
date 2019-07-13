#NoTrayIcon
#SingleInstance force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%


Loop {
	If !WinExist("mobile - dragalia")
	{
		ExitApp
	}
	Sleep 1000
}


#IfWinActive mobile - dragalia 
SetControlDelay -1

1:: ; Skill 1 - 143,920 -> 192,960
Random,x,143,192
Random,y,920,960
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

2:: ; Skill 2 - 231,910 -> 285,958
Random,x,231,285
Random,y,910,958
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

3:: ; Skill 3 - 323,915 -> 375,957
Random,x,323,375
Random,y,915,957
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

4:: ; Skill 4 - 417,915 -> 444,938
Random,x,417,444
Random,y,915,938
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

Space:: ; Dragon - 44,786 -> 85,821 
Random,x,44,85
Random,y,786,821
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

`:: ; Auto Toggle 419,235 -> 444,248
Random,x,419,444
Random,y,235,248
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return

Escape:: ; Menu 426,100 -> 443,107
Random,x,426,443
Random,y,100,107
ControlClick, % "x" x " y" y,mobile - dragalia,,,,NA Pos
return





