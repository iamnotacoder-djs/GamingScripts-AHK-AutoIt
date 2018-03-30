#SingleInstance force
lbutton_count:= 0

; Compare two colors
Compare(c1, c2, vary = 2) {
    rdiff := Abs( c1.r - c2.r )
    gdiff := Abs( c1.g - c2.g )
    bdiff := Abs( c1.b - c2.b )

    return rdiff <= vary && gdiff <= vary && bdiff <= vary
}

; Converter
ToRGB(color) {
    return { "r": (color >> 16) & 0xFF, "g": (color >> 8) & 0xFF, "b": color & 0xFF }
}

PgDn::ExitApp

LButton::
	ifWinActive, Playkey 
	{  
		PixelGetColor, color1, 1228, 723 
		PixelGetColor, color2, 1294, 723
		if Compare(ToRGB(color1), ToRGB(0xE4FFEC), 40) or Compare(ToRGB(color2), ToRGB(0xE4FFEC), 40) 
		{
			Loop
			{ 	
				if (lbutton_count = 0)
				{
					if Compare(ToRGB(color1), ToRGB(0xE4FFEC), 40) ; 0xE3FFE0 equal to E0FFE3 from Paint.Net
					{
						Click
						Send {4}
						Sleep, 900
						lbutton_count++ 
					}
				}
				if (lbutton_count = 1)
				{
					Click
					Send {3}
					Sleep, 900
					lbutton_count := 0
				}
				If (GetKeyState("LButton","P")=0)
				Break
			}
		}
		else 
		{
			Loop
			{ 	
				SetMouseDelay 14
				Click
				If (GetKeyState("LButton","P")=0)
				Break
			}
		}
	} else {
		Click
	}
