#SingleInstance force
#NoEnv

IniFile=%A_MyDocuments%\Autohotkeys.ini 

IfNotExist, %IniFile% 
	Gosub HKWrite
else
	IniRead, OutputVar, %IniFile%, Hotkeys, RMATool
	Hotkey, %OutputVar%, RMAToolHK, On
return

RMAToolHK:
 InputBox, RMANumber, RMA #, , , 150, 100
	if ErrorLevel                                        ;If cancel is pressed, then return to beginning
		Return
	else
	ifEqual, RMANumber,                                  ;If blank, then return to beginning
		Return
	else
	ifEqual, RMANumber, edit                             ;If "edit" is written, then go to HKWrite
		Gosub HKWrite
	else	
	Run, http://webfaktura.ernie.jarltech.de/webfaktura_de/rma.php?id=%RMANumber%
	Return
	
HKWrite:
	Gui, Add, Hotkey,   vHK gLabel                       ;add a hotkey control
	Gui, Show,,Hotkey
	return
	GuiClose:
		Reload

	Label:
		If HK in +,^,!,+^,+!,^!,+^!
		return
		If (HK = "") {                                    ;If the new hotkey is blank...
			Gosub HKWrite                                 ;This allows an old hotkey to be disabled without enabling a new one.
		}
		If (savedHK) {                         
			return
		}
		Gui, Submit, NoHide
		If StrLen(HK) = 1                                 ;If the new hotkey is only 1 character, then add the (~) modifier.
			HK := "~" HK   						          ;This prevents any key from being blocked.
			IniWrite, %HK%, %IniFile%, Hotkeys, RMATool 
			savedHK := HK 
			Reload
	
