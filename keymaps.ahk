#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook()
SendMode("Input")
SetWorkingDir(A_ScriptDir)

#Include %A_ScriptDir%\src\characters.ahk
#Include %A_ScriptDir%\src\function-layer.ahk
#Include %A_ScriptDir%\src\hotkeys.ahk
#Include %A_ScriptDir%\src\modifiers.ahk
