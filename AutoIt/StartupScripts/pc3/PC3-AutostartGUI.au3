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
                                ; Run Discord
                                $iPID = Run ('C:\Users\zhurai\AppData\Local\Discord\Update.exe' & ' --processStart Discord.exe', @SW_HIDE)
                                ; RunFirefox
                                $iPID = Run ("C:\Program Files\Mozilla Firefox\firefox.exe")
                                ; Run Slack
                                $iPID = Run ("C:\Users\zhurai\AppData\Local\slack\slack.exe","C:\Users\zhurai\AppData\Local\slack\app-4.28.184")
                                ExitLoop

                        Case $idButton_Work
                                ; Run SynergyC with the window minimized.
                                $iPID = Run("C:\Program Files\Synergy\synergyc.exe " & GUICtrlRead($idInput_SynergyWork), "",@SW_HIDE)
                                ; Run BS_MultiInstance
                                $iPID = Run("C:\Program Files\BlueStacks_nxt\HD-MultiInstanceManager.exe", "",@SW_HIDE)                                
                                ; Run Obsidian
                                $iPID = Run("C:\Users\zhurai\AppData\Local\Obsidian\Obsidian.exe", "C:\Users\zhurai\AppData\Local\Obsidian", @SW_HIDE)
                                ; Wait 15 seconds
                                Sleep (15000)
                                ; Activate the MultiInstanceManager Window
                                WinActivate("BlueStacks Multi Instance Manager")
                                ExitLoop
                EndSwitch
        WEnd

        ; Delete the previous GUI and all controls.
        GUIDelete($hGUI)
EndFunc   