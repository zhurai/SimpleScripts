#RequireAdmin
Opt("WinTitleMatchMode",2)
#include <Array.au3>
#include <MsgBoxConstants.au3>


; ------------------------
; Main

; Close Software and Emulators
CloseCounterSide()
Sleep (1000)
CloseMuMu()
Sleep (1000)
CloseBluestacks() 

; Sleep for a bit
Sleep(15000)

; Shut Down
Run("C:\Windows\System32\shutdown.exe /f /r /t 0")

; ------------------------
; Functions

Func CloseCounterSide ()
   Local $arrayofwindows = ScanWindows("COUNTER:SIDE")
   
   ; Loop through array of windows
   For $i = 0 To UBound($arrayofwindows)-1
	  Local $window = $arrayofwindows[$i]
	  WinClose($window)
	  Sleep (1000)
   Next
   
   $arrayofwindows = ScanWindows("CounterSide")
   ; Loop through array of windows
   For $i = 0 To UBound($arrayofwindows)-1
	  Local $window = $arrayofwindows[$i]
	  WinClose($window)
	  Sleep (1000)
   Next
EndFunc

Func CloseBluestacks ()
   Local $arrayofwindows = ScanWindows("BlueStacks")

   ; Loop through array of emulators
   For $i = 0 To UBound($arrayofwindows)-1
	  Local $window = $arrayofwindows[$i]
	  WinClose($window)
	  Sleep (1000)
   Next
EndFunc

Func CloseMuMu ()
   Local $arrayofwindows = ScanWindows("MuMu")

   ; Loop through array of emulators
   For $i = 0 To UBound($arrayofwindows)-1
	  Local $window = $arrayofwindows[$i]
	  WinClose($window)
	  Sleep (1000)
   Next
EndFunc

Func ScanWindows($item)
   Local $windowlist = WinList()
   Local $returnarray[0]= []
   For $i = 1 To $windowlist[0][0]
	  If $windowlist[$i][0] <> "" And BitAND(WinGetState($windowlist[$i][1]), 2) Then
		 If StringInStr ($windowlist[$i][0], $item) Then
			   _ArrayAdd($returnarray,$windowlist[$i][1],0)
		 EndIf
	  EndIf
   Next
   ;_ArrayDisplay($returnarray)
   return $returnarray
EndFunc
