#NoEnv
#SingleInstance,Force
#NoTrayIcon

NumLock::
	InputBox, UserInput, RMA #, , , 150, 100
	if ErrorLevel
		Return
	else
	ifEqual, UserInput, 
		Return
	else	
	Run, http://webfaktura.ernie.jarltech.de/webfaktura_de/rma.php?id=%UserInput%
	Return
