PgUp::WheelUp
PgDn::WheelDown
`::LButton
!`::RButton
!1::WheelUp
!q::WheelDown

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