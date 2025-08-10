; Modifier keys

; LCtrl::
; RAlt::RCtrl

;------------------------------------------------------------------------------
; Remap CapsLock to Control (when held) and Escape (when tapped)
; Thanks to: https://stackoverflow.com/a/78385198
;------------------------------------------------------------------------------

; SetCapsLockState("Toggle")

$*CapsLock::Send("{Blind}{LCtrl DownR}")

$*CapsLock Up:: {
    Send("{Blind}{LCtrl Up}")
    if (A_PriorKey = "CapsLock") {
        Send("{Esc}")
    }
}

;------------------------------------------------------------------------------
; Remap Right Alt to Control (when held) and Backspace (when tapped)
;------------------------------------------------------------------------------

$*RAlt::Send("{Blind}{RCtrl DownR}")

$*RAlt Up:: {
    Send("{Blind}{RCtrl Up}")
    if (A_PriorKey = "RAlt") {
        if (GetKeyState("Alt", "P")) {
            Send("!{Backspace}")
        } else if (GetKeyState("CapsLock", "P")) {
            Send("^{Backspace}")
        } else if (GetKeyState("Ctrl", "P")) {
            Send("^{Backspace}")
        } else {
            Send("{Backspace}")
        }
    }
}

;------------------------------------------------------------------------------
; Press both Shift keys together to toggle CapsLock state
;------------------------------------------------------------------------------

ToggleCaps() {
    ; By default, AHK turns off CapsLock before doing Send
    SetStoreCapsLockMode(false)
    Send("{CapsLock}")
    SetStoreCapsLockMode(true)
}

LShift & RShift::ToggleCaps()
RShift & LShift::ToggleCaps()
