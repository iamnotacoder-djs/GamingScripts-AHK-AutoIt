;#SingleInstance force

#SingleInstance
;~ #NoTrayIcon


isUpdate()

heroNames := ""
heroes := { "Бригитта": "1122:638","Гэндзи": "77:638", "Жнец": "133:638", "Кулак Смерти": "177:638", "Маккри": "216:638", "Солдат: 76": "262:638", "Сомбра": "310:638", "Трейсер": "350:638", "Фарра": "396:638", "Бастион": "458:638", "Крысавчик": "505:638", "Мэй": "548:638", "Роковая Вдова": "592:638", "Торбьорн": "639:638", "Ханзо": "683:638", "D.Va": "748:638", "Заря": "794:638", "Ориса": "837:638", "Райнхардт": "879:638", "Турбосвин": "923:638", "Уинстон": "969:638", "Ана": "1029:638", "Ангел": "1078:638", "Дзенъятта": "1166:638", "Лусио": "1212:638", "Мойра": "1256:638", "Симметра": "1300:638" }

for key, val in heroes
    heroNames .= key . "|"

Gui, Add, DropDownList, x173 y22 w190 h90 vList1 gAction, %heroNames%

Gui, Add, Text, x43 y23 w100 h20 , Выбрать героя
Gui, Add, Text, x43 y61 w290 h30 , Нажми F3 перед появлением экрана выбора персонажа
Gui, Show, w401 h110, Hero picker
; Generated using SmartGUI Creator for SciTE
return

x := 
y :=


Action:
    Gui, Submit, nohide
    result := StrSplit(heroes[List1], ":")
    x := % result[1]
    y := % result[2]
return

GuiClose:
ExitApp


ToRGB(color) {
    return { "r": (color >> 16) & 0xFF, "g": (color >> 8) & 0xFF, "b": color & 0xFF }
}

Compare(c1, c2, vary=2) {
    rdiff := Abs( c1.r - c2.r )
    gdiff := Abs( c1.g - c2.g )
    bdiff := Abs( c1.b - c2.b )

    return rdiff <= vary && gdiff <= vary && bdiff <= vary
}

stopPrompt() {
        TrayTip,, Скрипт автовыбора персонажа остановлен
}



#MaxThreadsPerHotkey 3
F3::  
#MaxThreadsPerHotkey 1
if KeepWinZRunning  ; This means an underlying thread is already running the loop below.
{
    KeepWinZRunning := false  ; Signal that thread's loop to stop.
    stopPrompt()
    return 
}
; Otherwise:
KeepWinZRunning := true

firstRun := true

Loop
{
    PixelGetColor, color, 743, 592
    PixelGetColor, colorSelected, 811, 627
 
    if firstRun
        TrayTip,, Скрипт автовыбора персонажа запущен
    
    firstRun := false
        
    if not KeepWinZRunning  ; The user signaled the loop to stop by pressing Win-Z again.
        break  ; Break out of this loop.

    if Compare(ToRGB(color), ToRGB(0xffffff)) 
    {
        MouseClick, left, x, y
        MouseClick, left, 686, 719
        Sleep, 150
    }
    else if Compare(ToRGB(colorSelected), ToRGB(0xffffff)) 
    {
        KeepWinZRunning := false
        stopPrompt()
        break
    }
}
KeepWinZRunning := false  ; Reset in preparation for the next press of this hotkey.
firstRun := false

isUpdate() {
	Loop, HKLM, System\MountedDevices
	If mac := A_LoopRegName
		Break
	RegExMatch(mac, ".*-(.*)}", mac)
	url := "https://raw.githubusercontent.com/idaspin/heropicker/master/api/version.ini"
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("GET", url, true)
	whr.Send()
	whr.WaitForResponse()
	version := whr.ResponseText
	if (version <> 2.0 ) {
		MsgBox, 4,, Новая версия уже в сети! Хотите загрузить обновление с сайта?
		IfMsgBox Yes
			doUpdate()
	}
}

doUpdate() {
	Run, https://github.com/idaspin/heropicker
}

return
^!p::Pause  
