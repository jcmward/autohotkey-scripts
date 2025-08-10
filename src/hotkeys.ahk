; Various hotkeys

; Mouse multi-click (useful for some games)
!LButton::Click(4)
!RButton::Click("Right", 4)

#0::Volume_Up
#9::Volume_Down
#m::Volume_Mute

#n::Media_Next
#p::Media_Prev
#q::Media_Play_Pause

#c::+F10
#w::F2

#f::WinMaximize("A")

#s::Send("{PrintScreen}")

; For some reason, the only way to auto-resize columns in Windows Explorer is
; to manually press ctrl and the numpad plus key.  Why it doesn't do that
; automatically is beyond me.  Anyway, not all keyboards have a numpad plus
; key, so here we are.
$#i::^NumpadAdd

RCtrl::Delete

$AppsKey::Send("{NumpadAdd}")
