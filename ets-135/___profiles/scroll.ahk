<<<<<<< HEAD
;-) click
F1::LButton
!F1::RButton

;-) another click
!1::WheelUp
!q::WheelDown

;-) more clicks
;Insert::LButton
;Home::MButton
;End::RButton
PgUp::WheelUp
PgDn::WheelDown

;-) suspend, pause and reload
^!r::Reload
^!p::Pause
^!s::
	Suspend, Permit
	SusToggle := !SusToggle
	If (SusToggle)
	{   Suspend, On
	}
	Else
	{   Suspend Off
	}
	Return

;-) clickers
!z::
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left
	MouseClick, Left, -240, 0, 1, 10, ,R
	; X, Y, Speed, Relative
	MouseMove, 240, 0, 2, R
	return

!x::
	; Place cursor on second row on Buy icon
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left, 0, -40, 1, 2, ,R
	; Chrome 210 FF 240
	MouseClick, Left, -240, 40, 1, 10, ,R
	; X, Y, Speed, Relative
	MouseMove, 240, 0, 2, R
	return
=======
PgUp::WheelUp
PgDn::WheelDown
>>>>>>> c6e3c0979939a8e0cb60ee7f95e989f7448a964f
