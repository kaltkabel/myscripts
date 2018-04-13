#NoEnv
#SingleInstance,Force

InputBox, X, Arbeitszeit heute, , , 200, 100
	if ErrorLevel
		ExitApp
	else
	ifEqual, X, 
		ExitApp
	else
GoSub, BreakApp
AbsMin := X

InputBox, X, Arbeiten bis.., , , 200, 100
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
MsgBox, Mein Herr und Meister! Sie dürfen noch %BreakG%min Pause machen, falls Sie es möchten.
ExitApp

BreakApp:
Y := Mod(X, 100)
Z := (X - Y) / 100
X := Y + Z * 60
return
