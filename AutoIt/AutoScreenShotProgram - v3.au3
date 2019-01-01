HotKeySet("{F1}", "myExit")
HotKeySet("{F2}", "ProgramToggle")
HotKeySet("{F3}", "SetScreenShotInterval")
HotKeySet("{F4}", "SetScreenShotArea")

MsgBox(0,"Automatic ScreenShot Program", "Developed by Adam Benabbou for Aoki-Yokozeki Lab" & @CRLF & _
"F1 = Exit Bot" & @CRLF & _
"F2 = ProgramToggle" & @CRLF & _
"F3 = Modify ScreenShotInterval" & @CRLF & _
"F4 = Modify ScreenShotArea" & @CRLF & _
" ---------------- " & @CRLF & _
"  " & @CRLF & _
"Make Sure LightShot is Running in Background.")
; Note: Need to makesure lightshot or Psome other program's bound to prntscrn key


Global $ProgramOn = False
Global $Interval = InputBox("Screenshot Setting", "Enter number of Screenshots) : ", "")
Global $x1 = 0
Global $x2 = 0
Global $y1 = 0
Global $y2 = 0
SetScreenShotArea()

Msgbox(0,"Press F2", "Press 'F2' to Toggle ON!")
$Count =1

while(1)
   If ($Count) <= ($Interval) Then
	  ScreenShoot()
   EndIf
   Sleep(400)
WEnd


Func ScreenShoot()
   If $ProgramOn == True Then
   $Count = $Count +1
   ;ConsoleWrite('Screenied'& @CRLF)
   Send("{PRINTSCREEN}")
   Sleep(100)
   LCDrag($x1,$y1,$x2,$y2)
   Sleep(100)
   Send("^s")
   Sleep(400)
   Send("{RIGHT}")
Else
EndIf
EndFunc


Func LC($x,$y)
   Mouseclick("left", $x, $y, 1, 1)
EndFunc

Func LCDrag($_x1,$_y1,$_x2,$_y2)
   MouseclickDrag("left", $_x1, $_y1, $_x2, $_y2)
EndFunc

Func ProgramToggle()
   If $ProgramOn == True then
	  $ProgramOn = False
	  MsgBox(0,"Functions List", "F1 = Exit Bot" & @CRLF & _
	  "F2 = ProgramToggle" & @CRLF & _
	  "F3 = Modify ScreenShotInterval" & @CRLF & _
	  "F4 = Modify ScreenShotArea")
   Else
	  $ProgramOn = True
   EndIf

EndFunc

Func SetScreenShotInterval()
   $Interval = InputBox("Screenshot Setting", "Enter number of Screenshots) : ", "")
EndFunc

Func SetScreenShotArea()
   MsgBox(0,"Setting ScreenShotP Area", "Place your mouse on the Top Left Corner and press SPACE to continue.")
   $mouse = MouseGetPos()
   $x1 = $mouse[0]
   $y1 = $mouse[1]

   MsgBox(0, "Setting ScreenShot Area", "Place your mouse on the Bottom Right Corner and press SPACE to continue.")
   $mouse = MouseGetPos()
   $x2 = $mouse[0]
   $y2 = $mouse[1]
EndFunc


Func myExit()
	  Msgbox(0,"Exiting Program", "Ending Program")
	  Exit
   EndFunc
