#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\1c - копия.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.12.0
	Author:         myName

	Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <WinAPI.au3>

$sProcess = "1cv8.exe"
$Title1C = "Запуск 1С:Предприятия"
$Login1C = "1С:Предприятие. Доступ к информационной базе"
$RMKChangeWindow = "РМК"

$hWnd = ""

If ProcessExists($sProcess) Then
	ProcessClose($sProcess)
EndIf

Sleep(3000)

;MsgBox(1, "1", "1")
Run("c:\Program Files\1cv8\common\1cestart.exe")
Sleep(4000)

$hWnd = WinGetHandle($Title1C)
ControlSend($hWnd, "", "", "{ENTER}")
Sleep(4000)
$hWnd = WinGetHandle($Login1C)
ControlSend($hWnd, "", "", "{ENTER}")
Sleep(4000)
$hWnd = WinGetHandle($RMKChangeWindow)
ControlSend($hWnd, "", "", "{ENTER}")