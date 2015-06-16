! ##################################################################################################################################
 
      SUBROUTINE CHAR_FLD ( JCARDI, IFLD, CHAR_INP )
 
! Reads a field of CHARACTER data that can be 1 to LEN(JCARDI) chars in length
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  IERRFL, FATAL_ERR
 
      USE CHAR_FLD_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)       :: JCARDI            ! The field of characters to read
      CHARACTER(LEN(JCARDI)), INTENT(OUT):: CHAR_INP          ! The character variable to read
 
      INTEGER(LONG), INTENT(IN)          :: IFLD              ! Field (2 - 9) of a Bulk Data card to read
      INTEGER(LONG)                      :: IOCHK             ! IOSTAT error value from READ
 
! **********************************************************************************************************************************
      CHAR_INP(1:) = ' '

      READ(JCARDI,'(A)',IOSTAT=IOCHK) CHAR_INP

      IF      (IOCHK < 0) THEN                             ! EOF/EOR during read

         IERRFL(IFLD) = 'Y'
         FATAL_ERR    = FATAL_ERR + 1

      ELSE IF (IOCHK == 0) THEN                            ! READ was OK

         IERRFL(IFLD) = 'N'

      ELSE IF (IOCHK > 0) THEN                             ! Error during READ

         IERRFL(IFLD) = 'Y'
         FATAL_ERR    = FATAL_ERR + 1

      ENDIF
 
      RETURN
 
! **********************************************************************************************************************************
 
      END SUBROUTINE CHAR_FLD
