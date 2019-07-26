;by cheva

BS := false

;reload
$^+R::Reload
;suspend/resume
$^+S::Suspend, toggle

$Backspace::
	if(BS) {
		BS := false
		Send, {Backspace Down}
	}
	else {
		BS := true
		Send, {Backspace Up}
	}
return

$Numpad5:: Send, {Down}

;-) click
Numpad0::LButton
NumpadDot::MButton
NumpadEnter::RButton
