PROGRAM Processing_Failing_Times_2
!------------------------------------------------------------------------------
! Program to read a list of failure times, calculate the mean time to 
! failure, and then print a list of failure times that are greater 
! than the mean. Identifiers used are:
!   FileName                : name of data file
!   OpenStatus              : status variable for OPEN
!   InputStatus             : status variable for READ
!   FailureTime             : one_dimensional array of failure times
!   NumTime                 : size of the array
!   I                       : subscript
!   Sum                     : sum of failure times
!   Mean_Time_to_Failure    : mean of the failure times
! 
! Input (keyboard): FileName  
! Input (file) :    NumTimes and a list of NumTimes failure times
! Output       :    Information to user about the data file,
!                   Mean_Time_to_Failure, and a list of failure times
!                   greater than Mean_Time_to_Failure
! Note: First value in data file must be the number of failure times
!------------------------------------------------------------------------------

  IMPLICIT NONE
    CHARACTER(20) :: FileName
    REAL, DIMENSION(:), ALLOCATABLE :: FailureTime
    INTEGER :: OpenStatus, InputStatus, AllocateStatus, I, NumTimes
    REAL :: Sum, Mean_Time_to_Failure

    ! Get the name of the data file and open it for input
    WRITE(*,'(1x,A)',ADVANCE="NO") "Enter name of data file: "
    READ*, FileName
    OPEN (UNIT = 10, FILE = FileName, STATUS = "OLD", IOSTAT = OpenStatus)
    IF (OpenStatus > 0) STOP "*** Cannot open the file ***"  !Was there another way?

    ! Get the number of failure times and allocate an array
    ! with that many elements to store the failure times
    READ(10, *, IOSTAT = InputStatus) NumTimes
    IF(InputStatus > 0) STOP "*** Input error ***"
    IF(InputStatus < 0) STOP "*** Not enough data ***"
    ALLOCATE(FailureTime(NumTimes), STAT=AllocateStatus)
    IF (AllocateStatus /=0) STOP "*** Not enough memory ***"

    ! Read the failure times and store them in an aray FailureTime
    READ(10, *, IOSTAT = InputStatus) FailureTime
    IF(InputStatus > 0) STOP "*** Input error ***"
    IF(InputStatus < 0) STOP "*** Not enough data ***"

    !Calculate the mean time to failure
    Sum = 0.0
    DO I = 1, NumTimes
        Sum = Sum + FailureTime(I)
    END DO
    Mean_Time_to_Failure = Sum / REAL(NumTimes)
    PRINT '(/ 1X, "For the", I4, " failure times read, " / 1X, &
        &"the mean time to failure =", F6.1)', NumTimes, Mean_Time_to_Failure

    !Print list of failure times greater than the mean
    PRINT *
    PRINT *, "List of failure times greater than the mean:"
    DO I = 1, NumTimes
        IF (FailureTime(I) > Mean_Time_to_Failure) &
            PRINT '(1X, F9.1)', FailureTime(I)
    END DO
    
    ! Deallocate the array of failure times
    DEALLOCATE(FailureTime)

END PROGRAM Processing_Failing_Times_2

