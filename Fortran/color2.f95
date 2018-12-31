PROGRAM COLOR2
IMPLICIT NONE
CHARACTER :: ColorAbbr*3, ColorName*22
INTEGER :: ColorCode, FStat

OPEN(10, File = 'Color.data')

DO
  READ(8, I2, A3, A22, IOSTAT = FStat) ColorCode, ColorAbbr, ColorName
  IF (FStat == 0) EXIT
  WRITE(*,100) ColorCode, ColorAbbr, ColorName(1:LEN_TRIM(ColorName))
  100 FORMAT("INSERTINTO Colors (ColorCode, ColorAbbr, ColorName) VALUES('",I2.2,"',",A3,"',",A,"')")
END DO

CLOSE FILE(10)

END PROGRAM COLOR2
