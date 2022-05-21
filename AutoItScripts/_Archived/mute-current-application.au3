#include <MsgBoxConstants.au3>
$currentwindow=WinGetTitle("[ACTIVE]")
$volumemixer="Volume Mixer"

If WinExists($volumemixer) Then
   WinClose($volumemixer)
   Sleep(500)
EndIf

Run("C:\Windows\System32\SndVol.exe")
Sleep(2000)

$buildtext="[TEXT:Mute for " & $currentwindow & "]"
$hControl = ControlGetHandle($volumemixer, "",$buildtext)
controlclick($volumemixer,"",$hControl,"left",1)
WinClose($volumemixer)
