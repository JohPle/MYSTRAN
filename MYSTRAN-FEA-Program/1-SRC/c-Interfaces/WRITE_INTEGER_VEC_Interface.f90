! ##################################################################################################################################

   MODULE WRITE_INTEGER_VEC_Interface

   INTERFACE

      SUBROUTINE WRITE_INTEGER_VEC ( ARRAY_DESCR, INT_VEC, NROWS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_MATRIX_BY_COLS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: ARRAY_DESCR       ! Character descriptor of the integer array to be printed

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in matrix MATOUT
      INTEGER(LONG), INTENT(IN)       :: INT_VEC(NROWS)    ! Integer vector to write out
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_MATRIX_BY_COLS_BEGEND

      END SUBROUTINE WRITE_INTEGER_VEC

   END INTERFACE

   END MODULE WRITE_INTEGER_VEC_Interface

