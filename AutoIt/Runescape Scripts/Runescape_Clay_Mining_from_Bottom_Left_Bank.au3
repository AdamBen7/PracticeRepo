;Custom1 Layout
HotKeySet("{F9}", "myExit")

$x = WinActivate("RuneScape")
ViewReset()

while(1)
   MineClayAtVarrock()
   ViewReset()
WEnd


Func Teleport_Taverly()

EndFunc

Func MineClayatVarrock()
   PathtoClayatVarrock1()
   MineClay()
   PathfromClayAtVarrock1()
   ;banking
   MouseClick("left", (645 + Random(-4, 4, 1)), (403 + Random(-4, 4, 1)) ,1,10 + Random(0, 40, 1)) ;get coord for going back to bank
   MouseClick("left", (793 + Random(-7, 7, 1)), (697 + Random(-7, 7, 1)) ,1,10 + Random(0, 40, 1)) ;get coord for going back to bank

EndFunc

Func MineClay()
   	  Send("{PGUP down}")
	  sleep(3000 + Random(0, 500, 1))
	  Send("{PGUP up}")
   	  $MineMode = Random(1,2,1)
	  If $MineMode == 1 Then
		 For $i = 14 To 1 Step -1
			MouseClick("left", (640 + Random(-25, 25, 1)), (444 + Random(-25, 25, 1)) ,1,15 + Random(0, 40, 1)) ;get coord for clay1
			sleep(2400 + Random(0, 200,1)) ;efficiency
			MouseClick("left", (762 + Random(-25, 25, 1)), (321 + Random(-25, 25, 2)) ,1,15 + Random(0, 40, 1)) ;get coord for clay2
			sleep(2400 + Random(0, 200,1)) ;efficiency
		 Next
	  Else
		 For $i = 14 To 1 Step -1
			MouseClick("left", (762 + Random(-25, 25, 1)), (321 + Random(-25, 25, 2)) ,1,15 + Random(0, 40, 1)) ;get coord for clay2
			sleep(2400 + Random(0, 200,1)) ;efficiency
			MouseClick("left", (640 + Random(-25, 25, 1)), (444 + Random(-25, 25, 1)) ,1,15 + Random(0, 40, 1)) ;get coord for clay1
			sleep(2400 + Random(0, 200,1)) ;efficiency
		 Next
	  EndIf
   EndFunc

Func ViewReset()
   MouseClick("left", (1138 + Random(-4,4,1)), (547 + Random(-3,3,1)), 1,(15 + Random(-3,3,1)))
   Send("{PGUP down}")
   Send("{UP down}")
   sleep(2000 + Random(0, 500, 1))
   Send("{UP up}")
   SEND("{PGUP UP}")

EndFunc
Func PathtoClayatVarrock1()
   MouseClick("left", (1264 + Random(-2, 2, 1)), (813 + Random(-2, 2, 1)) ,1,15 + Random(0, 100, 1))
   sleep(15000 + Random(0, 3000,1))
   MouseClick("left", (1371 + Random(-2, 2, 1)), (796 + Random(-2, 2, 1)) ,1,15 + Random(0, 100, 1))
   sleep(12000 + Random(0, 3000,1))
   ;MouseClick("left", (710 + Random(-2, 2, 1)), (425 + Random(-2, 2, 1)) ,1,15 + Random(0, 100, 1))
   ;sleep(2000 + Random(0, 1000,1))
EndFunc
Func PathfromClayAtVarrock1()
   MouseClick("left", (1291 + Random(-1, 1, 1)), (538 + Random(-1, 1, 1)) ,1,20 + Random(0, 40, 1)) ;get coord for going back to bank
   sleep(13000 + Random(0, 3000,1))
   MouseClick("left", (1372 + Random(-1, 1, 1)), (554 + Random(-1, 1, 1)) ,1,20 + Random(0, 40, 1)) ;get coord for going back to bank
   sleep(12000 + Random(0, 3000,1))
   MouseClick("left", (764 + Random(-2, 2, 1)), (318 + Random(-2, 2, 1)) ,1,15 + Random(0, 40, 1)) ;get coord for going back to bank
   sleep(4000 + Random(0, 1000,1))
   EndFunc

Func myExit()
	  Msgbox(0,"Exiting", "Your excellency is quitting")
	  Exit
   EndFunc

   #comments-start

   #comments-end