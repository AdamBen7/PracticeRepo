PROGRAM DetoHex
    IMPLICIT NONE
    CHARACTER, DIMENSION(16) :: Hex
    INTEGER :: Ivtcode
    CHARACTER :: DetoHe

    READ*, IvtCode
    Hex = (/'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'/)
    DetoHe = Hex(MOD(Ivtcode,16) +1)
print *, MOD(Ivtcode,16)
print*, DetoHe

END PROGRAM DetoHex
