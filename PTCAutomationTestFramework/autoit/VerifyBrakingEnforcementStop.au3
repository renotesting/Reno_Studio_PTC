;~ VerifyBrakingEnforcementStop
#include <GuiEdit.au3>

Func VerifyBrakingEnforcementStop()
Local $MP, $CurrentSpd
WinActivate("Motion Control - Heading", "")
WinWait("Motion Control - Heading")

Do
	$hHandle = ControlGetHandle("Motion Control - Heading", "", 1053)
	$MP = _GUICtrlEdit_GetText($hHandle)

	$hHandle = ControlGetHandle("Motion Control - Heading", "", 1032)
	$CurrentSpd = _GUICtrlEdit_GetText($hHandle)
Until $CurrentSpd = 0

EndFunc
