HotKeySet("{f1}", "myExit")
HotKeySet("{f2}", "SetHuntArea")
HotKeySet("{f3}", "SetHuntColor")
HotKeySet("{f4}", "AttackToggle")

HotKeySet("{f7}", "SetHPLow")
HotKeySet("{f8}", "SetHPHigh")
HotKeySet("{f9}", "SetLockPos")

MsgBox(0,"Functions List", "F1 = Exit Bot" & @CRLF & _
"F2 = Set Hunting Area" & @CRLF & _
"F3 = Setting Hunting Color (what to hunt)" & @CRLF & _
"F4 = Start / Stop Attack" & @CRLF & _
"F7 = Set LOW HP (dying)" & @CRLF & _
"F8 = Set HIGH HP (full)"& @CRLF & _
"F9 = Set the position of the Mob's lock")


Global $attacking = False;
Global $needRest = False;
Global $Hunting = False;

Global $HuntingForColor = 0x4B070A

;hunting area to search in. (Default)
Global $x1 = 500
Global $y1 = 200
Global $x2 = 1000
Global $y2 = 550

;Can manually change default or using the Set Functions

Global $lockx = 690
Global $locky = 118
Global $lockcolor = 0x1B1D15

Global $hplowx = 706
Global $hplowy = 770
Global $hplowcolor = 0x5D3C20

Global $hphighx =747
Global $hphighy =770
Global $hphighcolor =0x382F14

while(1)

   ;find a mob
   if($Hunting) Then
	  WinActivate("RuneScape")
   EndIf

   $pix = PixelSearch($x1,$y1,$x2,$y2,$HuntingForColor,1)
   if (not(@error) AND $Hunting) then
	  ;clic and attack mob
	  LC($pix[0],$pix[1],1,1)
	  sleep(2000)
	  $attacking = True

	  while($attacking)
	  ;are we still attacking the mob?
		 $isAttacking = PixelSearch($lockx - 1, $locky - 1, $lockx + 1, $locky + 1, $lockcolor,1)
		 if not(@error) Then
			;do nothing...
		 Else
			$attacking = False
		 EndIf
	  WEnd
	  ;are we healthy enough to continue attacking
#comments-start
	  $needRest = True
	  $hpBar = PixelSearch($hplowx - 1, $hplowy - 1, $hplowx + 1, $hplowy + 1, $hplowcolor, 1)
	  if @error Then
		 ;StartRest() ;member's only.
		 ;maybe an eat function
		 while ($needRest)
			$hpBar2 = PixelSearch($hphighx - 1, $hphighy - 1, $hphighx + 1, $hphighy + 1, $hphighcolor, 1)
			if not(@error) Then
			   $needRest = False
			EndIf
		 WEnd
	  Else
	  $needRest = False
#comments-end
   EndIf
WEnd

Func StartRest()
   MouseClick("right", 1894,79,1,1)
   sleep(500)
   MouseClick("left", 1815,125,1,1)
   sleep(2000)
EndFunc


Func SetHuntArea()
   MsgBox(0,"Setting Hunt Area", "Place your mouse on the Top Left Corner and press SPACE to continue.")
   $mouse = MouseGetPos()
   $x1 = $mouse[0]
   $y1 = $mouse[1]

   MsgBox(0, "Setting Hunt Area", "Place your mouse on the Bottom Right Corner and press SPACE to continue.")
   $mouse = MouseGetPos()
   $x2 = $mouse[0]
   $y2 = $mouse[1]
EndFunc

Func SetHuntColor()
   MsgBox(0,"Set Target Color", "Place your mouse over the color you would like to target. (Be Careful. Color of surroundings might affect what you are looking for")
   $mouse = MouseGetPos()
   $HuntingForColor = PixelGetColor($mouse[0],$mouse[1])
EndFunc

Func SetLockPos()
   ;Sets the position of the lock for mob health bar.
   MsgBox(0,"Set Mob Lock Position","Place your mouse over the lock on the Mob's HP Bar")
   $mouse = MouseGetPos()
   $lockx = $mouse[0]
   $locky = $mouse[1]
EndFunc


Func AttackToggle()
   if $Hunting == True Then
	  $Hunting = False
   Else
	  $Hunting = True
   EndIf
EndFunc


Func SetHPLow()
   MsgBox(0,"Set Low HP", "Place your mouse over the lowest point you want to keep fighting."
   $mouse = MouseGetPos()
   $hplowcolor = PixelGetColor($mouse[0], $mouse[1])
   $hplowx = $mouse[0]
   $hplowy = $mouse[1]
EndFunc


Func SetHPHigh()
   MsgBox(0,"Set High HP", "Place your mouse over the highest point you want to start fighting."
   $mouse = MouseGetPos()
   $hphighcolor = PixelGetColor($mouse[0], $mouse[1])
   $hphighx = $mouse[0]
   $hphighy = $mouse[1]
EndFunc

Func LC($x,$y,$randmagx,$randmagy)
   Mouseclick("left", ($x + Random(-$randmagx,$randmagx,1)), ($y + Random(-$randmagy,$randmagy,1)), 1, Random(5,10,1))
EndFunc

Func myExit()
   MsgBox(0,"Ending", "Bot has exited")
   Exit
EndFunc

