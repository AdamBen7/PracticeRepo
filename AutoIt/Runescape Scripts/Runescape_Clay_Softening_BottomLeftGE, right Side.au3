;Custom1 Layout
;Be at right side of bot-Left GE exchanger.
;Seems to have a problem finding the right pixel... dang jagex.
HotKeySet("{F1}", "myExit")

$x = WinActivate("RuneScape")
ViewReset()

LC(500,240,7,7)
Sleep(Random(600,1000,1))
while(1)

   WetClay()
WEnd


Func WetClay()

   RC(812,453,8,8) ;rightclick clay
   Sleep(Random(600,1400,1))
   LC(806,569,8,2)
   Sleep(Random(600,1400,1))
   CloseBank()
   Sleep(Random(600,1400,1))
   LC(24,307,4,4)
   Sleep(Random(600,1400,1))
   LC(1355,205,5,5)
   Sleep(Random(4800,5300,1))
   LC(878,547,95,14)
   Sleep(Random(34500,37000,1))
   LC(1277,718,0,1) ;going back to GE banker from fountain
   Sleep(Random(4800,5300,1))
   LC(500,240,8,8) ;banker
   Sleep(Random(600,1400,1))
   EmptyInventory()
   Sleep(Random(600,1400,1))

EndFunc

Func ViewReset()
   MouseClick("left", (1138 + Random(-4,4,1)), (547 + Random(-3,3,1)), 1,(15 + Random(-3,3,1)))
   Send("{PGUP DOWN}")
   Send("{DOWN DOWN}")
   Sleep(Random(1000, 1500, 1))
   Send("{DOWN UP}")
   SEND("{PGUP UP}")

EndFunc

Func myExit()
	  Msgbox(0,"Exiting", "Your excellency is quitting")
	  Exit
   EndFunc

Func EmptyInventory()
   MouseClick("left", (791 + Random(-10, 10, 1)), (698 + Random(-10, 10, 1)) ,1,Random(10, 30, 1)) ;get coord for going back to bank
   EndFunc

Func CloseBank()
   Send("{ESC UP}")
   Sleep(Random(10,100,1))
   Send("{ESC DOWN}")
   EndFunc

Func LC($x,$y,$randmagx,$randmagy)
   Mouseclick("left", ($x + Random(-$randmagx,$randmagx,1)), ($y + Random(-$randmagy,$randmagy,1)), 1, Random(15,30,1))
EndFunc

Func RC($x,$y,$randmagx,$randmagy)
   Mouseclick("right", ($x + Random(-$randmagx,$randmagx,1)), ($y + Random(-$randmagy,$randmagy,1)), 1, Random(15,30,1))
EndFunc

   #comments-start

   #comments-end