! ##################################################################################################################################
 
      SUBROUTINE GET_MYSTRAN_DIR ( MYSTRAN_DIR, MYSTRAN_DIR_LEN )
 
! Gets the environment variable MYSTRAN_DIR that tells Windows where the MYSTRAN executable is located. The user must have set this
! environment variable on their computer

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN

      USE GET_MYSTRAN_DIR_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(FILE_NAM_MAXLEN*BYTE), INTENT(OUT) :: MYSTRAN_DIR       ! Directory where executable (and INI file) exist

      INTEGER(LONG), INTENT(OUT)                   :: MYSTRAN_DIR_LEN   ! Length of MYSTRAN_DIR (not including trailing blanks)
      INTEGER(LONG)                                :: I                 ! DO loop index
 
      INTRINSIC                                    :: GETENV

! **********************************************************************************************************************************
      CALL GETENV ( 'MYSTRAN_directory', MYSTRAN_DIR )
      MYSTRAN_DIR_LEN = FILE_NAM_MAXLEN
      DO I=FILE_NAM_MAXLEN,1,-1
         IF (MYSTRAN_DIR(I:I) /= ' ') THEN
            EXIT
         ELSE
            MYSTRAN_DIR_LEN = MYSTRAN_DIR_LEN - 1
            CYCLE
         ENDIF
      ENDDO

! **********************************************************************************************************************************

      END SUBROUTINE GET_MYSTRAN_DIR


