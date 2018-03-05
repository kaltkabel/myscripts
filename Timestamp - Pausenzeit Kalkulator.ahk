#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#persistent

InputBox, Abstime, Arbeitszeit heute, , , 200, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, Abstime, 
		ExitApp
	else
InputBox, Unttime, Arbeiten bis.., , , 200, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, Unttime, 
		ExitApp
	else

formattime, time, , HHmm
NowT := time
AbsT := Abstime
UntT := Unttime
MaxG := 480

AbsM := Mod(AbsT, 100)
AbsH := (AbsT - AbsM) / 100
AbsG := AbsM + AbsH * 60

NowM := Mod(NowT, 100)
NowH := (NowT - NowM) / 100
NowG := NowM + NowH * 60

UntM := Mod(UntT, 100)
UntH := (UntT - UntM) / 100
UntG := UntM + UntH * 60

MaxAbs := MaxG - AbsG
UntNow := UntG - NowG

BreakG := UntNow - MaxAbs

MsgBox, Du kannst noch %BreakG%min Pause machen

ExitApp
