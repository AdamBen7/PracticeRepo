PROGRAM AV3
! http://www.fortrantutorial.com/arrays-formatted-io/index.php!
! Good use of parameter in order to make program maintainable

    IMPLICIT NONE
    INTEGER, PARAMETER      :: imax = 10
    REAL, DIMENSION(imax)   :: x
    REAL                    :: average, thesum
    INTEGER                 :: i

    PRINT *, 'Enter', imax, 'numbers'
    thesum = 0.0
    do i = 1, imax
        READ *, x(i)
        thesum = thesum + x(i)
    END DO

    average = thesum/imax
    PRINT *, 'the average i ', average
    PRINT *, 'the numers are'
    PRINT *, x
END PROGRAM AV3
