Gui, Font, s10, Verdana
Gui, Add, Text,, Necessary requirements for the correct working all the time:
Gui, Add, Text,, -- Play with the resolution 1920x1080 Inside OW settings
Gui, Add, Text,, -- Play in borderless Inside OW settings Only tested in borderless
Gui, Add, Text,, -- Have the gamma correction / contrast / brightness to default 50percent Inside OW settings
Gui, Add, Text,, -- Have asigned Need Healing voice line to key " X "
Gui, Add, Text,,
Gui, Add, Text,,
Gui, Add, Text,, Select your ideal healing spammer(Slow recomended for preventing spam reports by other players):
Gui, Add, DropDownList, vSpamoption, Agressive spammer|Normal spammer|Slow spammer
Gui, Add, Button, Default w150, Start
Gui, Add, Button, Default w150, Stop
Gui, Add, Text,, IMPORTANT NOTE: if you already selected one spammer and then pressed the start 
Gui, Add, Text,, button, press the stop button if you want to switch to another mode of spaming.
Gui, Add, Text,,
Gui, Add, Text,,
Gui, Add, Text,, Made by Peacetime from www.unknowncheats.me
Gui, Show
return

ButtonStop:
Reload
return

ButtonStart:
Gui, Submit, NoHide
 if ( Spamoption == "Agressive spammer"){

 	SoundBeep
 Loop{

	PixelGetColor, color, 1918, 1074 

	Blue:="0x" SubStr(color,3,2)
	Blue:=Blue+0

	Green:="0x" SubStr(color,5,2)
	Green:=Green+0

	Red:="0x" SubStr(color,7,2)
	Red:=Red+0

	if ( Green <= 10 ) && ( Blue <= 10 ) {
	
		Send, z
		Sleep 500

	}else{

	}

 }

 }

 if ( Spamoption == "Normal spammer"){

 	SoundBeep
 Loop{

	PixelGetColor, color, 1918, 1078 

	Blue:="0x" SubStr(color,3,2) 
	Blue:=Blue+0 

	Green:="0x" SubStr(color,5,2)
	Green:=Green+0

	Red:="0x" SubStr(color,7,2)
	Red:=Red+0

	if ( Green <= 10 ) && ( Blue <= 10 ) {
	
		Send, z
		Sleep 1500

	}else{

	}

 }

 }

 if ( Spamoption == "Slow spammer"){

 	SoundBeep
 Loop{

	PixelGetColor, color, 1918, 1074 

	Blue:="0x" SubStr(color,3,2)
	Blue:=Blue+0

	Green:="0x" SubStr(color,5,2)
	Green:=Green+0

	Red:="0x" SubStr(color,7,2)
	Red:=Red+0

	if ( Green <= 10 ) && ( Blue <= 10 ) {

		Send, z
		Sleep 5500

	}else{

	}

	
 }

 }
return

GuiClose:
 ExitApp
return
