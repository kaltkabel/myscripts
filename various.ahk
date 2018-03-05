;--------------------------------------
; CTRL+Q for current date dd.MM.yyyy
;--------------------------------------
^q::
	FormatTime, TimeString,, dd.MM.yyyy
	SendInput, %TimeString%: 
	Return

;--------------------------------------
; CTRL+SHIFT+C to google selected text
;--------------------------------------
^+c::
	SendInput, {ctrl down}c{ctrl up}
	Sleep, 50
	Run, http://www.google.com/search?q=%clipboard%
	Return
	
;--------------------------------------
; NUMPAD_ENTER to print active pdf
;--------------------------------------
#IfWinActive ahk_exe AcroRd32.exe
^NumpadEnter:: 
	Send, {ctrl down}p{ctrl up}
	Sleep, 500
	Send, {Enter}
	Sleep, 2500
	Process,Close,AcroRd32.exe
	Return
	
;--------------------------------------
; NUMPAD_ENTER to print active pdf
;--------------------------------------
#IfWinActive ahk_exe firefox.exe
^NumpadEnter:: 
	Send, {ctrl down}p{ctrl up}
	Sleep, 500
	Send, {Enter}
	Sleep, 2500
	Send, {ctrl down}{F4}{ctrl up}
	Return
