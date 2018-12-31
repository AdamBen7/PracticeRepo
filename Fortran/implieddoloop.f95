PROGRAM IMPLIEDDO

REAL :: ra(3,3)
INTEGER :: row, col, randdy
! use implied do

DO row = 1,3
    DO col = 1,3
!        randdy = IRAND()
!        read(randdy), ra(row,col)
        read*, ra(row,col)
    END DO
END DO
DO row = 1,3
    write(*,10) (ra(row,col),col=1,3)
END DO
10 format(10f5.1)

END PROGRAM IMPLIEDDO
