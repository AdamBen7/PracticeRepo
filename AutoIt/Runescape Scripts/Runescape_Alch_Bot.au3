HotKeySet("{F1}", "myExit")
HotKeySet("{F2}", "ToggleAlchMode")
HotKeySet("{F3}", "SetBankLocation")


$x = WinActivate("RuneScape")

MsgBox(0,"Functions List", "F1 = Exit Bot" & @CRLF & _
"F2 = ToggleAlchMode On/Off" & @CRLF & _
"F3 = SetBankLocation (Useless)")

Global $bankerx
Global $bankery

Global $AlchMode = False


while(1)
   Alch()
WEnd


Func Alch()
   while($Alchmode)
	  LC(20,416,13,13) ;alch spell click
	  Sleep(random(500,1500,1))
	  LC(22,318,17,17) ;alch item. Top left corner of inventory
	  Sleep(random(1000,1800,1))
   WEnd
   EndFunc

Func CloseBank()
   Send("{ESC UP}")
   Sleep(Random(10,100,1))
   Send("{ESC DOWN}")
   EndFunc

Func LC($x,$y,$randmagx,$randmagy)
   Mouseclick("left", ($x + Random(0,$randmagx,1)), ($y + Random(0,$randmagy,1)), 1, Random(3,14,1))
EndFunc

Func RC($x,$y,$randmagx,$randmagy)
   Mouseclick("right", ($x + Random(-$randmagx,$randmagx,1)), ($y + Random(-$randmagy,$randmagy,1)), 1, Random(3,14,1))
EndFunc


Func ToggleAlchMode()
   if $AlchMode == True Then
	  $AlchMode = False
   Else
	  $AlchMode = True
   EndIf
EndFunc

Func SetBankLocation()
   MsgBox(0,"Setting Banker Location", "Click on banker from your current view")
   $mouse = MouseGetPos()
   $bankerx = $mouse[0]
   $bankery = $mouse[1]
EndFunc

Func myExit()
	  Msgbox(0,"Exiting", "Your excellency is quitting")
	  Exit
   EndFunc
