! ##################################################################################################################################

      SUBROUTINE REAL_DATA_TO_C8FLD ( REAL_INP, CHAR8_OUT )

! Converts a real number to 8 character field:

!     -1.2345E+05 converts to -1.234+5
!     -1.2345E+12 converts to -1.23+12
!     +1.2345E+05 converts to 1.2345+5
!     +1.2345E+12 converts to 1.234+12

! This is used to create 8 char Bulk Data fields for real numbers with as many significant digits as possible. This subr is called
! when subr WRITE_PCOMP_EQUIV writes the PSHELL equivalent of a PCOMP to the F06 file (based on user request via Bulk Data PARAM
! PCOMPEQ

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      CHARACTER( 8*BYTE), INTENT(OUT) :: CHAR8_OUT         ! 8 character representation of REAL_INP
      CHARACTER(11*BYTE)              :: TEMP_CHAR         ! Temporary char field to store REAL_INP in 1ES11.4 format    

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: IBEG,IEND         ! Locations in char strings

      REAL(DOUBLE), INTENT(IN)        :: REAL_INP          ! Double precision real input number to be converted

! **********************************************************************************************************************************
      WRITE(TEMP_CHAR,'(1ES11.4)') REAL_INP

      CHAR8_OUT(1:) = ' '

      IBEG = 1
      IF (TEMP_CHAR(1:1) == '-') THEN
         CHAR8_OUT(1:1) = '-'
         IBEG = IBEG + 1
      ENDIF
      CHAR8_OUT(IBEG:IBEG) = TEMP_CHAR(2:2)
      IBEG = IBEG + 1
      CHAR8_OUT(IBEG:IBEG) = '.'

      CHAR8_OUT(8:8) = TEMP_CHAR(11:11)
      IEND = 7
      IF (TEMP_CHAR(10:10) /= '0') THEN
         CHAR8_OUT(IEND:IEND) = TEMP_CHAR(10:10)
         IEND = IEND - 1
      ENDIF
      CHAR8_OUT(IEND:IEND) = TEMP_CHAR(9:9)
      IEND=IEND-1
      
      DO I=4,11
         IBEG = IBEG+1
         IF ((CHAR8_OUT(IBEG:IBEG) == '-') .OR. (CHAR8_OUT(IBEG:IBEG) == '+')) exit
         CHAR8_OUT(IBEG:IBEG) = TEMP_CHAR(I:I)
      ENDDO

! **********************************************************************************************************************************

      END SUBROUTINE REAL_DATA_TO_C8FLD

