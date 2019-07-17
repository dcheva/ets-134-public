;-) click
`::LButton
!`::RButton
;!2::MButton

;-) scroll
!1::WheelUp
!q::WheelDown
PgUp::WheelUp
PgDn::WheelDown

X:=240 ; basic margin

;-) clickers
; set margin
!0::
	X:=240
	return
!9::
	X:=220
	return
!8::
	X:=200
	return
!7::
	X:=180
	return
!6::
	X:=160
	return
!5::
	X:=140
	return

; Buyer first click
!x::
	; Place cursor on second row on Buy icon
	MouseClick, Left, 0, -40, 1, 2, ,R
	MouseClick, Left, % 0-X, 40, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return
; Buyer clicks
!z::
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left
	MouseClick, Left, % 0-X, 0, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return
; Eater clicks
!c::
	; Place cursor check to eat
	MouseClick, Left
	MouseClick, Left, -640, 50, 1, 10, ,R
	MouseMove, 640, -50, 2, R
	return

; abort listing
!a::
	; Place cursor on minus
	MouseClick, Left
	MouseClick, Left, -380, 0, 1, 2, ,R
	MouseMove, 380, 0, 2, R
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
