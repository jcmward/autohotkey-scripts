#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook()
SendMode("Input")
SetWorkingDir(A_ScriptDir)

; Disable Windows key, Alt-Tab, etc. (to avoid losing window focus)

LWin::return
RWin::return

!Tab::return
!+Tab::return
!^Tab::return

^+Esc::return
