btcom -b AC:12:2F:C8:85:76 -c -s111e
btcom -b AC:12:2F:C8:85:76 -c -s110b
TIMEOUT /T 5
"C:\Program Files (x86)\VB\Voicemeeter\voicemeeter.exe" -R
"C:\Personal\Programs\nircmd\nircmd.exe" setdefaultsounddevice "VoiceMeeter Input" all
