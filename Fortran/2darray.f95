PROGRAM TWODARRAY
! more practice. 2D array with 2 rows and 3 columns. 
! Fills all locations in clumn 1 with 1, column 2 with 2, column 3 with 3

    IMPLICIT NONE
    INTEGER, DIMENSION(2,3) :: a
    INTEGER                 :: row, col, count
    count = 0
    ! creates an array with 3 cols and 2 rows
    !sets col  to 1 col2 to 2 and so on
    DO row = 1, 2
        count = 0
        DO col = 1,3
            count = count + 1
            a(row, col) = count
        END DO
    END DO
    DO row = 1,2
        DO col = 1,3
           PRINT*, a(row,col)
        END DO
    END DO
END PROGRAM TWODARRAY
