#include <Misc.au3>
 
;Hotkeyset("=","RunActivator")
Hotkeyset("z","BuildWall")
Hotkeyset("c","BuildStairs")
Hotkeyset("x","BuildFloor") 
;HotKeySet("+{ESC}","Quit") ; shift + esc
;HotKeySet("+{TAB}", "TogglePause")
Global $Paused
AutoItSetOption("MouseCoordMode", 0)
 
Func Quit()
    Exit
EndFunc
Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
        ToolTip('Script is "Paused"',150,150)
    WEnd
    ToolTip("")
 EndFunc
 
Func RunActivator()
   Send("{LSHIFT}")
   Send("=")
   send("{SHIFTDOWN}")
   send("{SHIFTUP}")
EndFunc
 
Func BuildWall()
   Hotkeyset("z")
     Send("z")
      sleep(200)
      MouseClick("left")
	 Send("q")
	 Hotkeyset("z","BuildWall")
 
EndFunc
 
Func BuildStairs()
      Hotkeyset("c")
   Send("c")
      sleep(200)
      MouseClick("left")
      Send("q")
	  Hotkeyset("c","BuildStairs")
   EndFunc
 
   Func BuildFloor()
	     Hotkeyset("x")
	  Send("x")
      sleep(200)
      MouseClick("left")
      Send("q")
	  Hotkeyset("x","BuildFloor")
   EndFunc
 
while 1
   ToolTip('Cheat active' &  @crlf, 50, 50)
   sleep(1)
WEnd
