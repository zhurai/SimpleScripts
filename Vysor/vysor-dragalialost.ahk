; Vysor AHK Script
; Game=Dragalia Lost 

; Vysor Settings
;    Pin Title Bar=True
;    Navigation Bar=False
;    Full Screen=False
;    Pin Title Bar=True

; Game Settings
;    Show Status Bar = On
;    Show Navigation Bar = On

; Other Notes
;    Randomizes so I'm not clicking a single pixel...

; HotKey Settings
;    F2 = Pause
;    ` = Auto
;    Escape = menu
;    Space = Dragon
;    #1-#3 = Skills
;    #4 = Skill (Solo), Sticker (Co-Op) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Main Settings
#NoEnv
SendMode Input 
SetWorkingDir %A_ScriptDir%  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Global

;Enable Script / Disable Script (Global)
#F2::
Pause
Suspend
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Vysor Only Hotkeys

#IfWinActive mobile
SetControlDelay -1

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

