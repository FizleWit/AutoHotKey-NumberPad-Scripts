		#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Numpad0:: ;Snipping Tool opens with 1 button
Send {LWin down}
Send +s
send {LWin up}
return

Numpad1:: ;Open Task Manager 
run taskmgr.exe
return

Numpad2:: ;Open NotePad++
IfWinExist ahk_exe notepad++.exe
	winactivate ahk_exe notepad++.exe
else
	run, "C:\Program Files\Notepad++\notepad++.exe"
WinWait ahk_exe notepad++.exe
WinActivate ahk_exe notepad++.exe
WinWaitActive ahk_exe notepad++.exe
return

Numpad3:: ;OpenFileExplorer
Send {LWin down}
Send e
Send {LWin up}$
return

Numpad4:: ;Capture Alt + F1
Send !{F1}
return

Numpad5:: ;Record Toggle Alt + F9
Send !{F9}
return

Numpad6:: ;Performance Overlay Alt + r
Send !r
return

Numpad7:: ;instantReplayRecordLast Alt + F1
Send !{F10}
return

Numpad8:: ;toggle InstantReplay Alt + Shift + z
Send (!+{F10})
return

Numpad9:: ;Open ShadowPlay Alt + Z
Send !z
return

~!PrintScreen:: ; print screen button copys the screen, opens MS Paint, pastes screenshot into paint
~PrintScreen::
	; run paint and grab its PID
	Run, mspaint.exe,,,paintPID
	; wait for the window
	Winwait, ahk_PID %paintPID%
	; paste
	Send ^v
Return

NumpadDiv:: ;msi afterburner
IfWinExist ahk_exe MSIAfterburner.exe
	winactivate ahk_exe MSIAfterburner.exe
else
	run, "C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe"
WinWait ahk_exe MSIAfterburner.exe
WinActivate ahk_exe MSIAfterburner.exe
WinWaitActive ahk_exe MSIAfterburner.exe
return

NumpadDot:: ;shortcutforcalculator app kinda odd because its preinstalled windows desktop>Caluclator>Properties>Shortcut to make this work you have to create a shortcut for the calculator.exe with windows and make sure the paths are the same the .exe will have an option for shortcuts to install just make sure the script is the same
Send ^!7
return

NumpadMult::
Send {LWin down}{Shift down}{Right down}
Send {LWin up}{Shift up}{Right up}
return

NumpadAdd:: ;
Send, NumpadAdd
return

NumpadSub:: ;
Send, NumpadSub
return

NumpadEnter:: ;
Send, NumpadEnter
return

LWin::LAlt ;swap left window button for Alt keychron ekyboard issue
return

LAlt::LWin ; swap Left alt for Left Window Keychron keyboard issue
return



