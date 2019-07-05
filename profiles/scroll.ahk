!`::LButton

;`::LButton
;!`::RButton

!1::WheelUp
!q::WheelDown


;Insert::LButton
;Home::MButton
;End::RButton

PgUp::WheelUp
PgDn::WheelDown

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
   
