PROGRAM Mean_Driver_1
!------------------------------------------------------------------------------
! Driver program to test an internal function Mean that calculates the 
! mean of an array of numbers. Identifiers used are:
!   Item    : one-dimensional array of numbers
!   NumItems: number of items (named constant)
!   Mean    : function that finds the mean of a set of numbers
!
! Input : NumItems and a list of NumItems real numbers
! Output: The mean of the numbers
!------------------------------------------------------------------------------

    IMPLICIT NONE
    INTEGER, PARAMETER :: NumItems = 10
    REAL, DIMENSION(NumItems) :: Item

    PRINT *, "Enter the", NumItems, "real numbers: "
    READ*, Item
    print '(1X, "Mean of the ", I3, " Numbers is ", F6.2)', &
        NumItems, Mean(Item, NumItems)

  CONTAINS
!-Mean-------------------------------------------------------------------------
! Function to find the mean of the NumElements elemets of the array
! X. The size (NumElements) lf X is passed as an argument.
!
! Accepts: Array X and NumElements
! Returns: The mean of the numbers stored in X
!------------------------------------------------------------------------------

    FUNCTION Mean(X, NumElements)
        INTEGER, INTENT(IN) :: NumElements
        REAL, DIMENSION(NumElements), INTENT(IN) :: X
        REAL :: Mean
    
        Mean = SUM(X) / REAL(NumElements)
    
    END FUNCTION MEAN

END PROGRAM Mean_Driver_1
