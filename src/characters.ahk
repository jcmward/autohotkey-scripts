; Insert accented letters (for Spanish) and special symbols

;------------------------------------------------------------------------------
; Function to send different characters based on Shift state
;------------------------------------------------------------------------------

SendWithShift(Lower, Upper) {
    if GetKeyState("Shift", "P")
        Send(Upper)
    else
        Send(Lower)
}

;------------------------------------------------------------------------------
; Spanish accents
;------------------------------------------------------------------------------

; Accented vowels
LCtrl & a::SendWithShift("á", "Á")
LCtrl & e::SendWithShift("é", "É")
LCtrl & i::SendWithShift("í", "Í")
LCtrl & o::SendWithShift("ó", "Ó")
LCtrl & u::SendWithShift("ú", "Ú")

; Diaeresis (umlaut) over u
LCtrl & d::SendWithShift("ü", "Ü")

; Cedilla under c
LCtrl & c::SendWithShift("ç", "Ç")

; Tilde over n
LCtrl & n::SendWithShift("ñ", "Ñ")

; Inverted punctuation
LCtrl & 1::Send("¡")
LCtrl & /::Send("¿")

;------------------------------------------------------------------------------
; Other symbols
;------------------------------------------------------------------------------

; For ultra-minimal keyboards.  Also easier to reach.
LCtrl & ,::SendWithShift("``", "~")
LCtrl & .::SendWithShift("-", "_")
LCtrl & b::SendWithShift("\", "|")

; Emdash and endash.  I've been using these since long before the LLM craze.
LCtrl & m::SendWithShift("—", "–")
