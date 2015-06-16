! ##################################################################################################################################

   MODULE READ_MATRIX_1_Interface

   INTERFACE

      SUBROUTINE READ_MATRIX_1 ( FILNAM, UNT, OPND, CLOSE_IT, CLOSE_STAT, MESSAG, NAME, NTERM, NTERM_READ, NROWS  &

                               , I_MATOUT, J_MATOUT, MATOUT )
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_MATRIX_1_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_IT          ! ='Y'/'N' whether to close UNT or note
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_STAT        ! What to do with file when it is closed
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Input to subr UNFORMATTED_OPEN 
      CHARACTER(LEN=*), INTENT(IN)    :: NTERM_READ        ! If 'Y', read NTERM from file before reading matrix
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Matrix name
      CHARACTER(LEN=*), INTENT(IN)    :: OPND              ! If 'Y', then do not open UNT, If 'N', open it
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MATOUT
      INTEGER(LONG), INTENT(IN)       :: NTERM             ! Number of matrix terms that should be in FILNAM
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number of FILNAM
      INTEGER(LONG), INTENT(OUT)      :: I_MATOUT(NROWS+1) ! Row numbers for terms in matrix MATOUT
      INTEGER(LONG), INTENT(OUT)      :: J_MATOUT(NTERM)   ! Col numbers for terms in matrix MATOUT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_MATRIX_1_BEGEND
 
      REAL(DOUBLE) , INTENT(OUT)      :: MATOUT(NTERM)     ! Real values for matrix MATOUT
 
      END SUBROUTINE READ_MATRIX_1

   END INTERFACE

   END MODULE READ_MATRIX_1_Interface

