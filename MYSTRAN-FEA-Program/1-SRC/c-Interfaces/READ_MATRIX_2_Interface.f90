! ##################################################################################################################################

   MODULE READ_MATRIX_2_Interface

   INTERFACE

      SUBROUTINE READ_MATRIX_2 ( FILNAM, UNT, OPND, CLOSE_IT, CLOSE_STAT, MESSAG, NAME, NROWS, NTERMS, NTERM_READ  &

                               , I2_MATOUT, J_MATOUT, MATOUT )
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_MATRIX_2_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_IT          ! ='Y'/'N' whether to close UNT or note
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_STAT        ! What to do with file when it is closed
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Input to subr UNFORMATTED_OPEN 
      CHARACTER(LEN=*), INTENT(IN)    :: NTERM_READ        ! If 'Y', read NTERM from file before reading matrix
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Matrix name
      CHARACTER(LEN=*), INTENT(IN)    :: OPND              ! If 'Y', then do not open UNT, If 'N', open it
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in the matrix
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of matrix terms that should be in FILNAM
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number of FILNAM
      INTEGER(LONG), INTENT(OUT)      :: I2_MATOUT(NTERMS) ! Row numbers for terms in matrix MATOUT
      INTEGER(LONG), INTENT(OUT)      :: J_MATOUT(NTERMS)  ! Col numbers for terms in matrix MATOUT
      INTEGER(LONG)                   :: OLD_ROW_NUM       ! A variable used to tell when a new row of MATOUT is being read
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_MATRIX_2_BEGEND

      REAL(DOUBLE) , INTENT(OUT)      :: MATOUT(NTERMS)    ! Real values for matrix MATOUT

      END SUBROUTINE READ_MATRIX_2

   END INTERFACE

   END MODULE READ_MATRIX_2_Interface

