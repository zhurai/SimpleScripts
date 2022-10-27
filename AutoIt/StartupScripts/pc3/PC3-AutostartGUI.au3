#include <GUIConstantsEx.au3>

AutoItSetOption("GUICoordMode",1)

AutostartPC3GUI()

Func AutostartPC3GUI()
        ; Create a GUI
        Local $hGUI = GUICreate("Autostart", 400, 400)
        ; Create button controls
        Local $idButton_Home = GUICtrlCreateButton("Run Home Apps",10,0,90)
        Local $idButton_Work = GUICtrlCreateButton("Run Work Apps",10,30,90)
        Local $idButton_Close = GUICtrlCreateButton("Close",350,350)
		; Create Inputs
		;Local $idInput_SynergyHome=GUICtrlCreateInput("192.168.7.3",110,0,100)
		Local $idInput_SynergyWork=GUICtrlCreateInput("192.168.61.71",110,30,100)

        ; Display the GUI
        GUISetState(@SW_SHOW, $hGUI)

        ; Loop until the user exits.
        While 1
                Switch GUIGetMsg()
                        Case $GUI_EVENT_CLOSE, $idButton_Close
                                ExitLoop
                        Case $idButton_Home
                                ; Run Nothing More
                                ; $iPID = Run("notepad.exe", "", @SW_SHOWMAXIMIZED)
                                ExitLoop

                        Case $idButton_Work
                                ; Run SynergyC with the window maximized.
                                $iPID = Run("C:\Program Files\Synergy\synergyc.exe " & GUICtrlRead($idInput_SynergyWork), "",@SW_HIDE)
                                ExitLoop
                EndSwitch
        WEnd

        ; Delete the previous GUI and all controls.
        GUIDelete($hGUI)
EndFunc   