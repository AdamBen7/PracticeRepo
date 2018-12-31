PROGRAM Mean_Driver_2
!------------------------------------------------------------------------------
! Driver program to test an external function Mean that calculates the 
! mean of an array of numbers. Identifiers used are:
!   NumItems        : number of items
!   Allocate Status : status variable for allocate
!   Item            : one-dimensional array of items
!   Mean            : external function to find the mean
!
! Input : NumItems and a list of NumItems real numbers   
! Output: The mean of the numbers
!------------------------------------------------------------------------------

    IMPLICIT NONE
    REAL, DIMENSION(:), ALLOCATABLE :: Item
    INTEGER :: NumItems, AllocateStatus

    INTERFACE
      FUNCTION Mean(X)
        REAL :: Mean
        REAL, DIMENSION(:), INTENT(IN) :: X
      END FUNCTION Mean
    END INTERFACE

    WRITE(*, '(1X, A)', ADVANCE = "NO") &
        "How many numers are in the data set? "
    READ *, NumItems
    ALLOCATE(Item(NumItems), STAT = AllocateStatus)
    IF ( AllocateStatus /= 0) STOP "***Not enough memory ***"
    
    PRINT *, "Enter the", NumItems, " real numbers:"
    READ *, Item

    PRINT '(1X, "Mean of the ", I3, " Numbes is ", F6.2)', &
            NumItems, Mean(Item)
    DEALLOCATE(Item)
END PROGRAM Mean_Driver_2


! Mean--------------------------------------------------------------------------
! External function to find the mean of the elements of the 
! array X. Local variables used are: 
!   Sum : sum of the numbers
!   I   : subscript
!
!   Accepts: Assumed-shape array X
!   Returns: The mean of the numers stored in X
!------------------------------------------------------------------------------

FUNCTION Mean(X)

    IMPLICIT NONE
    REAL :: Mean
    REAL, DIMENSION(:), INTENT(IN) :: X
    
    Mean = SUM(X) / REAL(SIZE(X))

END FUNCTION Mean
