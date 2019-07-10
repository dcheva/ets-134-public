;-) click
F1::LButton
!F1::RButton
!F2::MButton

;-) scroll
!1::WheelUp
!q::WheelDown
PgUp::WheelUp
PgDn::WheelDown

;-) clickers
; Buyer first click
!x::
	; Place cursor on second row on Buy icon
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left, 0, -40, 1, 2, ,R
	; Chrome 210 FF 240
	MouseClick, Left, -240, 40, 1, 10, ,R
	; X, Y, Speed, Relative
	MouseMove, 240, 0, 2, R
	return
; Buyer clicks
!z::
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left
	MouseClick, Left, -240, 0, 1, 10, ,R
	; X, Y, Speed, Relative
	MouseMove, 240, 0, 2, R
	return
; Eater clicks
!c::
	; Place cursor check to eat
	MouseClick, Left
	MouseClick, Left, -640, 50, 1, 10, ,R
	MouseMove, 640, -50, 2, R
	return

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
