! ##################################################################################################################################

   MODULE WRITE_MATRIX_1_Interface

   INTERFACE

      SUBROUTINE WRITE_MATRIX_1 ( FILNAM, UNT, CLOSE_IT, CLOSE_STAT, MESSAG, NAME, NTERM, NROWS, I_MATIN, J_MATIN, MATIN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_MATRIX_1_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_IT          ! ='Y'/'N' whether to close UNT or not
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_STAT        ! What to do with file when it is closed
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Matrix name
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Input to subr UNFORMATTED_OPEN 

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MATIN
      INTEGER(LONG), INTENT(IN)       :: NTERM             ! Number of matrix terms that should be in FILNAM
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number of FILNAM
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(NROWS+1)  ! Row numbers for terms in matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERM)    ! Col numbers for terms in matrix MATIN
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_MATRIX_1_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MATIN(NTERM)      ! Real values for matrix MATIN

      END SUBROUTINE WRITE_MATRIX_1

   END INTERFACE

   END MODULE WRITE_MATRIX_1_Interface

