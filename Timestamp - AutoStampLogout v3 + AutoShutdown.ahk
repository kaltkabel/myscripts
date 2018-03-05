#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#persistent

settimer, App1, 50
InputBox, UserShort, Kürzel, , , 150, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, UserShort, 
		ExitApp
	else
InputBox, UserTime, Uhrzeit, , , 150, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, UserTime, 
		ExitApp
	else
Random, sec, 1, 59
FinalTime := UserTime*100 + sec
Return

App1:
  formattime, time, , HHmmss
  if (time = FinalTime)
    {
      Run, http://webfaktura.ernie.jarltech.de/webfaktura_de/zeiterfassung.php?zeiterfassung=%UserShort%&action2=0
	  Sleep, 1000
	  Run, shutdown /s
	  ExitApp
    }
  Return
