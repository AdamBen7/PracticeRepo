PROGRAM Normofvector
!Norm----------------------------------------------------------------
! Function to calculate the norm of a vector. Variabels used:
!   A : array that stores the vector
!   B : number of components in the vector(its dimension)
!
! Accepts: A and N 
! Returns: Norm of the N-dimensional vector stored in A
!--------------------------------------------------------------------

FUNCTION Norm(A, N)
    REAL :: Norm
    REAL, INTENT(IN), DIMENSION(N) :: A
    INTEGER, INTENT(IN) :: N

    Norm = SQRT(SUM(A*A))
END FUNCTION Normofvector
