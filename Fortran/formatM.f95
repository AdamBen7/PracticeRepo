PROGRAM FORMAT

    IMPLICIT NONE
    ! demonstrates use of the format statement
    INTEGER, PARAMETER :: ikind=selected_real_kind(p=15)
    REAL, DIMENSION(4) :: x
    INTEGER, DIMENSION(4) :: nums
    INTEGER :: i
    REAL(kind=ikind), DIMENSION(4) :: computed
    !fill up the arrays with something
    DO i = 1,4
        nums(i)     = i*10
        computed(i) = cos(0.1*i)
        x(i)        = computed(i)
    END DO
    PRINT *, 'num - integer'
    WRITE(*,1) nums
    1 format(2i10)
    PRINT *, 'x - real'
        write(*,2) x
    2 format(f6.2)
    PRINT *, 'computed - double precision'
        write(*,3) computed
    3 format(f20.7)

END PROGRAM FORMAT
