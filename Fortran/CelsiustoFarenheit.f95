PROGRAM CELSIUSTOFARENHEIR
!
!
!
!
IMPLICIT NONE
REAL :: Celsius, Farenheit

WRITE(*,*) "Enter Temperature in Celsius:"
READ*, Celsius
Farenheit = (9.0/5.0)*Celsius + 32.0 ! in order not to mix int with real and 9.0/5.0 = 1.8, not 1
WRITE(*,*) "Calculating..."
WRITE(*,*) Celsius, "C in Farenheit is ", Farenheit, "F"

END PROGRAM CELSIUSTOFARENHEIR
