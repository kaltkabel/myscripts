#NoEnv
#SingleInstance,Force

InputBox, X, Arbeitszeit, , , 150, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, X, 
		ExitApp
	else
GoSub, BreakApp
AbsMin := X

InputBox, X, Feierabend, , , 150, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, X, 
		ExitApp
	else
GoSub, BreakApp
UntMin := X

formattime, X, , HHmm
GoSub, BreakApp
NowMin := X
MaxMin := 480

MaxAbs := MaxMin - AbsMin
UntNow := UntMin - NowMin
BreakG := floor(UntNow - MaxAbs)
MsgBox, Pausenzeit heute: %BreakG% Minuten
ExitApp

BreakApp:
Y := Mod(X, 100)
Z := (X - Y) / 100
X := Y + Z * 60
return
