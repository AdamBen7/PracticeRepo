PROGRAM PROJECTILE
!---------------------------------------------------------------------
! This program caluculates the velocity and height of a projectile
! given its initial height, initial veloity, and constant
! accelertion. Identitfiers used are:
! 
!   InitialHeight   : initial height of projectile (meters)
!   Height          : height at any time (meters)
!   InitialVelocity : intial vertical velocity (m/sec)
!   Velocity        : vertical velocty at any time (m/sec)
!   Acceleration    : vertical acceleration (m/sec/sec)
!   Time            : time since launch (seconds)
! Input : InitialHeight, InitialVelocity, Time
! Output: Velocity, Height
!---------------------------------------------------------------------

IMPLICIT NONE
REAL :: InitialHeight, Height, InitialVelocity, Velocity, &
        Acceleration = -9.80665, Time

! Obtain values for InitialHeight, InitialVelocity, and Time
PRINT *, "Enter the initial height (m) and velocity (m/s):"
READ *, InitialHeight, InitialVelocity
PRINT*, "Enter time in seconds at which to calculate height and velocity:"
READ*, Time

! Calculate the height and velocity
Height = 0.5 * Acceleration * Time ** 2 &
         + InitialVelocity * Time + InitialVelocity
Velocity = Acceleration * Time + InitialVelocity

! Display Velocity and Height
PRINT*, "At time", Time, "seconds"
PRINT*, "the vertical velocity is", Velocity, "m/sec"
PRINT*, "and the height is", Height, "meters"

END PROGRAM PROJECTILE
