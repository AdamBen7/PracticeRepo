PROGRAM RAMAGIC
! CIO
!
!
    IMPLICIT NONE
    REAL, DIMENSION(10) :: a,b,c,d

    OPEN(10, FILE = 'ramagicdata.txt')
    READ(10,*) a
    b = a*10
    c = b - a
    d = 1
    PRINT*, 'a = ',a
    PRINT*, 'b = ',b
    PRINT*, 'c = ',c
    PRINT*, 'd = ',d
END PRGRAM RAMAGIC
