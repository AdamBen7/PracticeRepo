PROGRAM Processing_Failing_Times_1
!------------------------------------------------------------------------------
! Program to read a list of failure times, calculate the mean time to 
! failure, and then print a list of failure times that are greater 
! than the mean. Identifiers used are:
!   OpenStatus              : status variable for OPEN
!   InputStatus             : status variable for READ
!   FailureTime             : one_dimensional array of failure times
!   NumTime                 : size of the array (constant)
!   I                       : subscript
!   Sum                     : sum of failure times
!   Mean_Time_to_Failure    : mean of the failure times
!   
! Input (file) :    A list of NumTimes failure times
! Output       :    Information to user about the data file,
!                   Mean_Time_to_Failure, and a list of failure times
!                   greater than Mean_Time_to_Failure
!------------------------------------------------------------------------------

    IMPLICIT NONE
    INTEGER, PARAMETER :: NumTimes = 50
    REAL, DIMENSION(NumTimes) :: FailureTime
    INTEGER :: OpenStatus, InputStatus, I
    REAL :: Sum, Mean_Time_to_Failure

    PRINT *, "Program reads", NumTimes, "failure times from fil8-1.dat."
    OPEN (UNIT = 10, FILE = "fil8-1.dat", STATUS = "OLD", IOSTAT = OpenStatus)
    IF (OpenStatus > 0) STOP "*** Cannot open the file ***"  !Was there another way?

    ! Read the failure times and store them in array FailureTime
    READ(10, *, IOSTAT = InputStatus) FailureTime
    IF(InputStatus > 0) STOP "*** Input error ***"
    IF(InputStatus < 0) STOP "*** Not enough data ***"

    !Calculate the mean timne to failure
    Sum = 0.0
    DO I = 1, NumTimes
        Sum = Sum + FailureTime(I)
    END DO
    Mean_Time_to_Failure = Sum / REAL(NumTimes)
    PRINT '(/ 1X, "Mean time to failure =", F6.1)', Mean_Time_to_Failure
    
    !Print list of failure times greater than the mean
    PRINT *
    PRINT *, "List of failure times greater than the mean:"
    DO I = 1, NumTimes
        IF (FailureTime(I) > Mean_Time_to_Failure) &
            PRINT '(1X, F9.1)', FailureTime(I)
    END DO

END PROGRAM Processing_Failing_Times_1

