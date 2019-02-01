#NoEnv
; #Warn
SendMode Input 
SetWorkingDir %A_ScriptDir%  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; NOTES: specific Char1-4 clicking is buggy
; NOTES: with default f10


;Enable Script / Disable Script (Global) - Win+F1
#F2::
Pause
Suspend
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive mobile
SetControlDelay -1

; 948x 21y 481w 1031h

; Auto 411,232 -> 433,256
`::
Random,x,420,430
Random,y,235,250
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Menu 425,105 -> 443,120
Escape::
Random,x,425,443
Random,y,105,120
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Switch Character 42,699 -> 103,855
; Tab::
; Random,x,31,103
; Random,y,785,855
; ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
; return

; Dragon - 40,706 -> 94,733
Space::
Random,x,40,94
Random,y,706,733
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Skill 1 - 135,828 -> 198,885
1::
Random,x,143,206
Random,y,828,885
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Skill 2 - 224,829 -> 295,890
2::
Random,x,224,295
Random,y,829,890
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Skill 3 - 318,830 -> 381,881
3::
Random,x,318,381
Random,y,830,881
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

; Skill 4 - 405,827 -> 449,866
4::
Random,x,405,449
Random,y,827,866
ControlClick, % "x" x+8 " y" y+31,mobile,,,,Pos
return

#If

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

