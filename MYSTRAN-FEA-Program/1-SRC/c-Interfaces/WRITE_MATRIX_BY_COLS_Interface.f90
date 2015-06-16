! ##################################################################################################################################

   MODULE WRITE_MATRIX_BY_COLS_Interface

   INTERFACE

      SUBROUTINE WRITE_MATRIX_BY_COLS ( MAT_DESCR, MATOUT, NROWS, NCOLS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_MATRIX_BY_COLS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_DESCR          ! Character descriptor of the matrix to be printed

      INTEGER(LONG), INTENT(IN)       :: NROWS              ! Number of rows in matrix MATOUT
      INTEGER(LONG), INTENT(IN)       :: NCOLS              ! Number of cols in matrix MATOUT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_MATRIX_BY_COLS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MATOUT(NROWS,NCOLS)! Matrix to write out
 
      END SUBROUTINE WRITE_MATRIX_BY_COLS

   END INTERFACE

   END MODULE WRITE_MATRIX_BY_COLS_Interface

