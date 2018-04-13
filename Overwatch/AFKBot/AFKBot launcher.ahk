#SingleInstance force
#NoEnv
#InstallKeybdHook
#UseHook
AutoTrim, Off

Gui Add, GroupBox, x8 y5 w384 h50, Базовые функции
IniRead, sMove, config.ini, Main, Move, Checked
IniRead, sShoot, config.ini, Main, Shoot, Checked
Gui Add, CheckBox, x16 y25 w160 h20 gmMove %sMove%, Двигаться вперед
Gui Add, CheckBox, x216 y25 w160 h20 gmShoot %sShoot%, Стрельба
Gui, Font, c555555
Gui Add, Text, x416 y25 w370 h40, 'Двигаться вперед' необходимо, чтобы выбраться с респавна на котхах. А без 'стрельбы' не обойтись на ликвидации.
Gui, Font, c000000

Gui Add, GroupBox, x8 y55 w384 h150, Расширенные функции
IniRead, sBan, config.ini, Advanced, Ban, Checked
IniRead, sTrigger, config.ini, Advanced, Trigger, Checked
IniRead, sGroup, config.ini, Advanced, Group, Checked
IniRead, sReJoin, config.ini, Advanced, ReJoin, Checked
IniRead, sNoCompetitive, config.ini, Advanced, NoCompetitive, Checked
Gui Add, CheckBox, x16 y70 w370 h30 gmBan %sBan%, Доп. траектории движения для защиты от Кик'а за бездействие
Gui Add, CheckBox, x16 y100 w160 h30 gmTrigger %sTrigger%, Триггер-бот
Gui Add, CheckBox, x216 y100 w160 h30 gmGroup %sGroup%, Присоединяться к группам
Gui Add, CheckBox, x16 y130 w370 h40 gmReJoin %sReJoin%, Автоматически переподключаться из главного меню к другому серверу по кодовому слову `AFK farm`
Gui Add, CheckBox, x16 y170 w370 h30 gmNoCompetitive %sNoCompetitive%, Блок подключения к другим режимам
Gui, Font, c555555
Gui Add, Text, x416 y60 w370 h160, 'Доп. траектории' помогут выбраться с респавна, если вас заблокируют в углу другие игроки на котхах. `n'Триггер-бот' - это механизм, который проверяет не навелись ли вы на противника, и в случае успеха, производит выстрел. Так вы можете получить дополнительный опыт в конце матча. За начатый матч будучи в группе вам начисляется сверху дополнительных 20`% опыта. `nВ группу вас может пригласить недоброжелатель, кто будучи её лидером покинет матч прихватив вас с собой, а то и попробует подключиться к аркадному и соревновательному режиму. Во избежание подобных ситуаций 'переподключение' и 'блок других режимов' вас спасет.
Gui, Font, c000000


Gui Add, GroupBox, x8 y205 w384 h90, Переподключение к игре
IniRead, sReconnect, config.ini, Reconnect, Reconnect, 0
IniRead, sEmail, config.ini, Reconnect, Email, %A_Space%
IniRead, sPassword, config.ini, Reconnect, Password, %A_Space%
Gui Add, CheckBox, x16 y225 w370 h20 gmReconnect %sReconnect%, Авторизироваться при разрыве соединения с Battle.Net
Gui Add, Edit, x16 y250 w135 h20 hwndHED1 vmEmail, %sEmail%
Gui Add, Edit, x156 y250 w135 h20 hwndHED2 vmPassword, %sPassword%
SetEditCueBanner(HED1, "Логин (e-mail)")
SetEditCueBanner(HED2, "Пароль")
Gui Add, Button, x306 y250 w66 h23 gmSave, Записать
Gui, Font, c555555
Gui Add, Text, x416 y210 w370 h80, 'Переподключение' даст вам возможность не беспокоиться о том, что пока вас не было, игра отключилась от Battle.Net из за неполадок на серверах или от проблем с роутером. Однако для работы скрипта вам придется отключить дополнительную аунтификацию поскольку бот не умеет доставать код подтверждения из: смс, e-mail или мобильного приложения. 'Записать' - сохранить логин/пароль в конфиг.
Gui, Font, c000000

Gui Add, GroupBox, x8 y295 w384 h50, Автоматически закрывать текстовый чат
IniRead, sChatGame, config.ini, TextChat, ChatGame, Checked
IniRead, sChatMenu, config.ini, TextChat, ChatMenu, Checked
Gui Add, CheckBox, x16 y315 w160 h20 gmChatGame %sChatGame%, В игре
Gui Add, CheckBox, x216 y315 w160 h20 gmChatMenu %sChatMenu%, В меню
Gui, Font, c555555
Gui Add, Text, x416 y300 w370 h80, Чат может открыться по разным причинам, но если его не закрыть, команды 'движения' не будут переданы в игру. В этом случае вас выбросит в главное меню. 
Gui, Font, c000000

Gui Add, GroupBox, x8 y345 w384 h80, Медали и POTG
IniRead, sUlt, config.ini, POTG, Ult, Checked
IniRead, sVoice, config.ini, POTG, Voice, Checked
IniRead, sSpray, config.ini, POTG, Spray, Checked
Gui Add, CheckBox, x16 y365 w370 h20 gmUlt %sUlt%, Автоматически использовать ультимативные способности
Gui Add, CheckBox, x16 y390 w160 h20 gmVoice %sVoice%, Отправлять реплики
Gui Add, CheckBox, x216 y390 w160 h20 gmSpray %sSpray%, Отправлять граффити
Gui, Font, c555555
Gui Add, Text, x416 y370 w370 h80, За медали и POTG вам также выдают дополнительный опыт в конце матча. 
Gui, Font, c000000

Gui Add, GroupBox, x8 y425 w384 h80, Случайные сбои
IniRead, sFriends, config.ini, Windows, Friends, Checked
IniRead, sGroups, config.ini, Windows, Groups, Checked
IniRead, sPause, config.ini, Windows, Pause, Checked
Gui Add, CheckBox, x16 y445 w370 h20 gmFriends %sFriends%, Автоматически закрывать вкладку Друзья
Gui Add, CheckBox, x16 y470 w160 h20 gmGroups %sGroups%, Закрывать Группы
Gui Add, CheckBox, x216 y470 w160 h20 gmPause %sPause%, Закрывать меню паузы
Gui, Font, c555555
Gui Add, Text, x416 y430 w370 h80, Как и в случае с чатом, пока открыты эти экрана, команды бота не могут быть переданы в игру.
Gui, Font, c000000

Gui Add, GroupBox, x8 y505 w384 h140, Приложение
IniRead, sAutoUpdate, config.ini, App, AutoUpdate, Checked
Gui Add, Text, x16 y525 w370 h30, Приостановить/Возобновить работу приложения [F2]
Gui Add, Text, x17 y555 w370 h30, Оборвать работу приложения [F3]
Gui Add, CheckBox, x16 y575 w370 h30 gmAutoUpdate %sAutoUpdate%, Проверять обновления при запуске приложения
Gui Add, Button, x16 y605 w368 h30 gmUpd, Обновить
Gui Add, Button, x416 y475 w368 h30 gmYt, Описание работы бота (Youtube)
Gui Add, Button, x416 y525 w368 h120 gmStart, Старт

Gui Show, w800 h680, AFKBot-Overwatch 3.0

if sAutoUpdate <> 0 
{
	isUpdate()
}

SetEditCueBanner(HWND, Cue) { 
   Static EM_SETCUEBANNER := (0x1500 + 1)
   Return DllCall("User32.dll\SendMessageW", "Ptr", HWND, "Uint", EM_SETCUEBANNER, "Ptr", True, "WStr", Cue)
}

return 

mMove:
	if sMove = Checked
	{
		sMove := 0
		IniWrite, 0, config.ini, Main, Move
	} else if sMove = 1
	{
		sMove := 0
		IniWrite, 0, config.ini, Main, Move
	} else if sMove = 0
	{
		sMove := 1
		IniWrite, Checked, config.ini, Main, Move
	}
return

mShoot:
	if sShoot = Checked
	{
		sShoot := 0
		IniWrite, 0, config.ini, Main, Shoot
	} else if sShoot = 1
	{
		sShoot := 0
		IniWrite, 0, config.ini, Main, Shoot
	} else if sShoot = 0
	{
		sShoot := 1
		IniWrite, Checked, config.ini, Main, Shoot
	}
return

mBan:
	if sBan = Checked
	{
		sBan := 0
		IniWrite, 0, config.ini, Advanced, Ban
	} else if sBan = 1
	{
		sBan := 0
		IniWrite, 0, config.ini, Advanced, Ban
	} else if sBan = 0
	{
		sBan := 1
		IniWrite, Checked, config.ini, Advanced, Ban
	}
return

mTrigger:
	if sTrigger = Checked
	{
		sTrigger := 0
		IniWrite, 0, config.ini, Advanced, Trigger
	} else if sTrigger = 1
	{
		sTrigger := 0
		IniWrite, 0, config.ini, Advanced, Trigger
	} else if sTrigger = 0
	{
		sTrigger := 1
		IniWrite, Checked, config.ini, Advanced, Trigger
	}
return

mGroup:
	if sGroup = Checked
	{
		sGroup := 0
		IniWrite, 0, config.ini, Advanced, Group
	} else if sGroup = 1
	{
		sGroup := 0
		IniWrite, 0, config.ini, Advanced, Group
	} else if sGroup = 0
	{
		sGroup := 1
		IniWrite, Checked, config.ini, Advanced, Group
	}
return

mReJoin:
	if sReJoin = Checked
	{
		sReJoin := 0
		IniWrite, 0, config.ini, Advanced, ReJoin
	} else if sReJoin = 1
	{
		sReJoin := 0
		IniWrite, 0, config.ini, Advanced, ReJoin
	} else if sReJoin = 0
	{
		sReJoin := 1
		IniWrite, Checked, config.ini, Advanced, ReJoin
	}
return

mNoCompetitive:
	if sNoCompetitive = Checked
	{
		sNoCompetitive := 0
		IniWrite, 0, config.ini, Advanced, NoCompetitive
	} else if sNoCompetitive = 1
	{
		sNoCompetitive := 0
		IniWrite, 0, config.ini, Advanced, NoCompetitive
	} else if sNoCompetitive = 0
	{
		sNoCompetitive := 1
		IniWrite, Checked, config.ini, Advanced, NoCompetitive
	}
return

mReconnect:
	if sReconnect = Checked
	{
		sReconnect := 0
		IniWrite, 0, config.ini, Reconnect, Reconnect
	} else if sReconnect = 1
	{
		sReconnect := 0
		IniWrite, 0, config.ini, Reconnect, Reconnect
	} else if sReconnect = 0
	{
		sReconnect := 1
		IniWrite, Checked, config.ini, Reconnect, Reconnect
	}
return

mSave:
	Gui, Submit
	IniWrite, %mEmail%, config.ini, Reconnect, Email
	IniWrite, %mPassword%, config.ini, Reconnect, Password
return

mChatGame:
	if sChatGame = Checked
	{
		sChatGame := 0
		IniWrite, 0, config.ini, TextChat, ChatGame
	} else if sChatGame = 1
	{
		sChatGame := 0
		IniWrite, 0, config.ini, TextChat, ChatGame
	} else if sChatGame = 0
	{
		sChatGame := 1
		IniWrite, Checked, config.ini, TextChat, ChatGame
	}
return

mChatMenu:
	if sChatMenu = Checked
	{
		sChatMenu := 0
		IniWrite, 0, config.ini, TextChat, ChatMenu
	} else if sChatMenu = 1
	{
		sChatMenu := 0
		IniWrite, 0, config.ini, TextChat, ChatMenu
	} else if sChatMenu = 0
	{
		sChatMenu := 1
		IniWrite, Checked, config.ini, TextChat, ChatMenu
	}
return

mUlt:
	if sUlt = Checked
	{
		sUlt := 0
		IniWrite, 0, config.ini, POTG, Ult
	} else if sUlt = 1
	{
		sUlt := 0
		IniWrite, 0, config.ini, POTG, Ult
	} else if sUlt = 0
	{
		sUlt := 1
		IniWrite, Checked, config.ini, POTG, Ult
	}
return

mVoice:
	if sVoice = Checked
	{
		sVoice := 0
		IniWrite, 0, config.ini, POTG, Voice
	} else if sVoice = 1
	{
		sVoice := 0
		IniWrite, 0, config.ini, POTG, Voice
	} else if sVoice = 0
	{
		sVoice := 1
		IniWrite, Checked, config.ini, POTG, Voice
	}
return

mSpray:
	if sSpray = Checked
	{
		sSpray := 0
		IniWrite, 0, config.ini, POTG, Spray
	} else if sSpray = 1
	{
		sSpray := 0
		IniWrite, 0, config.ini, POTG, Spray
	} else if sSpray = 0
	{
		sSpray := 1
		IniWrite, Checked, config.ini, POTG, Spray
	}
return

mFriends:
	if sFriends = Checked
	{
		sFriends := 0
		IniWrite, 0, config.ini, Windows, Friends
	} else if sFriends = 1
	{
		sFriends := 0
		IniWrite, 0, config.ini, Windows, Friends
	} else if sFriends = 0
	{
		sFriends := 1
		IniWrite, Checked, config.ini, Windows, Friends
	}
return

mGroups:
	if sGroups = Checked
	{
		sGroups := 0
		IniWrite, 0, config.ini, Windows, Groups
	} else if sGroups = 1
	{
		sGroups := 0
		IniWrite, 0, config.ini, Windows, Groups
	} else if sGroups = 0
	{
		sGroups := 1
		IniWrite, Checked, config.ini, Windows, Groups
	}
return

mPause:
	if sPause = Checked
	{
		sPause := 0
		IniWrite, 0, config.ini, Windows, Pause
	} else if sPause = 1
	{
		sPause := 0
		IniWrite, 0, config.ini, Windows, Pause
	} else if sPause = 0
	{
		sPause := 1
		IniWrite, Checked, config.ini, Windows, Pause
	}
return

mAutoUpdate:
	if sAutoUpdate = Checked
	{
		sAutoUpdate := 0
		IniWrite, 0, config.ini, App, AutoUpdate
	} else if sAutoUpdate = 1
	{
		sAutoUpdate := 0
		IniWrite, 0, config.ini, App, AutoUpdate
	} else if sAutoUpdate = 0
	{
		sAutoUpdate := 1
		IniWrite, Checked, config.ini, App, AutoUpdate
	}
return

mUpd:
	isUpdate()
return

mYt:
msgbox, he?
return

mStart:
msgbox, he?
return

isUpdate() {
	Loop, HKLM, System\MountedDevices
	If mac := A_LoopRegName
		Break
	RegExMatch(mac, ".*-(.*)}", mac)
	url := "https://raw.githubusercontent.com/idaspin/GamingScripts-AHK-AutoIt/master/Overwatch/HeroPicker/api/version.ini"
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("GET", url, true)
	whr.Send()
	whr.WaitForResponse()
	version := whr.ResponseText
	if (version <> 3.0) {
		MsgBox, 4,, Новая версия уже в сети! Хотите загрузить обновление с сайта?
		IfMsgBox Yes
			doUpdate()
	}
}

doUpdate() { ;todo realises page
	Run, https://github.com/idaspin/AFKBot-Overwatch
}

F3:: ExitApp
