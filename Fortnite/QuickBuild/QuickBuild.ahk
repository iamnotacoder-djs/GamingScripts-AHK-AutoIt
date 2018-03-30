#SingleInstance force
paused := 0

showMessage(s) {
	#Persistent
	ToolTip, %s%, 100, 60
	SetTimer, RemoveToolTip, 1000
	return
		
	ToolTip, Multiline`nTooltip, 100, 40

	RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	ToolTip
	return
}

close() {
	showMessage("QuickBuild остановлен.")
	sleep 1000
	ExitApp
}

wall(paused) {
	if (paused = 1) {
		Send, {z}
	} else {
		Send, {z}
		Sleep 200
		MouseClick, left
		Send, {q}
	}
}

floor(paused) {
	if (paused = 1) {
		Send, {x}
	} else {
		Send, {x}
		Sleep 200
		MouseClick, left
		Send, {q}
	}
}

stairs(paused) {
	if (paused = 1) {
		Send, {c}
	} else {
		Send, {c}
		Sleep 200
		MouseClick, left
		Send, {q}
	}
}

run(paused) {
	if (paused = 1) 
	{
		Send, {=}
	} else {
		Send, {Shift}{=}{Shift down}{Shift up}
	}
}

togglePause(paused) {
	if (paused = 1) {
		return 0
	} else {
		return 1
	}
}

Loop {
	if (paused = 1) {
		showMessage("QuickBuild на паузе.")
	} else {
		showMessage("QuickBuild работает.")
	}
	Sleep 800
}

$PgDn:: close()

$PgUp:: paused := togglePause(paused)

$=:: run(paused)

$z:: wall(paused)

$x:: floor(paused)

$c:: stairs(paused)
