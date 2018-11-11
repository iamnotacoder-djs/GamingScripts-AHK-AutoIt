#SingleInstance force
; #SingleInstance
;~ #NoTrayIcon


heroNames := ""
sizes := ""
heroes1280x720 := { "D.va": "77:609","Заря": "120:609","Ориса": "156:609","Рейнхарт": "193:609","Таран": "233:609","Турбосвин": "275:609","Уинстон": "313:609","Бастион": "368:609","Гендзи": "406:609","Рипер": "448:609","Крысавчик": "490:609","Кулак Смерти": "529:609","Макри": "563:609","Мей": "604:609","Роковая вдова": "644:609","Симметра": "687:609","Солдат 76": "726:609","Сомбра": "770:609","Торбьёрн": "806:609","Трейсер": "846:609","Фарра": "883:609","Хандзо": "922:609","Эш": "963:609","Ана": "1018:609","Ангел": "1059:609","Бригитта": "1096:609","Дзенятта": "1137:609","Лусио": "1176:609","Мойра": "1215:609"}

heroes1376x768 := { "D.va": "77:648","Заря": "126:648","Ориса": "164:648","Рейнхарт": "206:648","Таран": "251:648","Турбосвин": "294:648","Уинстон": "336:648","Бастион": "394:648","Гендзи": "431:648","Рипер": "476:648","Крысавчик": "522:648","Кулак Смерти": "564:648","Макри": "607:648","Мей": "643:648","Роковая вдова": "686:648","Симметра": "731:648","Солдат 76": "774:648","Сомбра": "819:648","Торбьёрн": "861:648","Трейсер": "902:648","Фарра": "945:648","Хандзо": "988:648","Эш": "1027:648","Ана": "1090:648","Ангел": "1131:648","Бригитта": "1171:648","Дзенятта": "1212:648","Лусио": "1253:648","Мойра": "1296:648"}

heroes1920x1080:= { "D.va": "115:911","Заря": "173:911","Ориса": "235:911","Рейнхарт": "293:911","Таран": "355:911","Турбосвин": "407:911","Уинстон": "475:911","Бастион": "555:911","Гендзи": "608:911","Рипер": "674:911","Крысавчик": "737:911","Кулак Смерти": "797:911","Макри": "854:911","Мей": "909:911","Роковая вдова": "965:911","Симметра": "1029:911","Солдат 76": "1087:911","Сомбра": "1154:911","Торбьёрн": "1215:911","Трейсер": "1269:911","Фарра": "1331:911","Хандзо": "1389:911","Эш": "1446:911","Ана": "1531:911","Ангел": "1589:911","Бригитта": "1649:911","Дзенятта": "1708:911","Лусио": "1767:911","Мойра": "1829:911"}

heroes2560x1440 := { "D.va": "153:1216","Заря": "236:1216","Ориса": "314:1216","Рейнхарт": "390:1216","Таран": "468:1216","Турбосвин": "546:1216","Уинстон": "630:1216","Бастион": "738:1216","Гендзи": "814:1216","Рипер": "898:1216","Крысавчик": "991:1216","Кулак Смерти": "1062:1216","Макри": "1137:1216","Мей": "1214:1216","Роковая вдова": "1292:1216","Симметра": "1372:1216","Солдат 76": "1449:1216","Сомбра": "1540:1216","Торбьёрн": "1613:1216","Трейсер": "1694:1216","Фарра": "1774:1216","Хандзо": "1852:1216","Эш": "1926:1216","Ана": "2040:1216","Ангел": "2121:1216","Бригитта": "2199:1216","Дзенятта": "2279:1216","Лусио": "2356:1216","Мойра": "2439:1216"}
heroes := heroes2560x1440
resolutions := { "1280x720": "1280x720", "1376x768": "1376x768", "1920x1080": "1920x1080", "2560x1440": "2560x1440" } 

for key, val in heroes1920x1080
    heroNames .= key . "|"
	
for key, val in resolutions
    sizes .= key . "|"

Gui, Add, DropDownList, x173 y62 w190 h90 vList1 gAction, %heroNames%
Gui, Add, DropDownList, x173 y21 w190 h90 vList2 gAction2, %sizes%

Gui, Add, Text, x43 y63 w100 h20 , Выбрать героя
Gui, Add, Text, x43 y21 w140 h20 , Выбрать разрешение

Gui, Add, Text, x43 y101 w290 h30 , Нажми F3 перед появлением экрана выбора персонажа
Gui, Show, w401 h180, Hero picker
; Generated using SmartGUI Creator for SciTE
return

x := 
y :=
res :=
c1 := 109
c2 := 844
s1 := 864
s2 := 865
cl1 := 965
cl2 := 1011


Action:
    Gui, Submit, nohide
    result := StrSplit(heroes[List1], ":")
    x := % result[1]
    y := % result[2]
return

Action2:
    Gui, Submit, nohide
	res := % resolutions[List2]
	if res = 2560x1440 
	{
		heroes := heroes2560x1440
		c1 := 144
		c2 := 1128
		s1 := 1152
		s2 := 1143
		cl1 := 1284
		cl2 := 1351
	}
	if res = 1920x1080 
	{
		heroes := heroes1920x1080
		c1 := 109
		c2 := 844
		s1 := 864
		s2 := 865
		cl1 := 965
		cl2 := 1011
	}
	if res = 1376x768 
	{
		heroes := heroes1376x768
		c1 := 76
		c2 := 602
		s1 := 612
		s2 := 616
		cl1 := 676
		cl2 := 716
	}
	if res = 1280x720 
	{
		heroes := heroes1280x720
		c1 := 72
		c2 := 564
		s1 := 575
		s2 := 573
		cl1 := 631
		cl2 := 676
	}
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
    PixelGetColor, color, c1, c2
 
    ;if firstRun
    ;    TrayTip,, Скрипт автовыбора персонажа запущен
    
    firstRun := false
        
    if not KeepWinZRunning  ; The user signaled the loop to stop by pressing Win-Z again.
        break  ; Break out of this loop.

    if Compare(ToRGB(color), ToRGB(0xffffff)) 
    {
		;SendInput, {Click %x% %y%}
		;SendInput, {Click %cl1% %cl2%}
        MouseClick, left, x, y
        MouseClick, left, cl1, cl2
        Sleep, 120
    }
    else 
    {
		PixelGetColor, colorSelected, s1, s2	
		if Compare(ToRGB(colorSelected), ToRGB(0xffffff)) 
		{
			KeepWinZRunning := false
			stopPrompt()
			break
		}
    }
}
KeepWinZRunning := false  ; Reset in preparation for the next press of this hotkey.
firstRun := false

return
^!p::Pause  
