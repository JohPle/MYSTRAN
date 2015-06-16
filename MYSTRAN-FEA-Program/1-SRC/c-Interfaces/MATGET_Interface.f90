! ##################################################################################################################################

   MODULE MATGET_Interface

   INTERFACE

      SUBROUTINE MATGET ( A, NROWA, NCOLA, BEG_ROW, BEG_COL, NROW, NCOL, B )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATGET_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: BEG_COL           ! Beginning row of input matrix to get partition from
      INTEGER(LONG), INTENT(IN)       :: BEG_ROW           ! Beginning col of input matrix to get partition from
      INTEGER(LONG), INTENT(IN)       :: NCOLA             ! Number of cols in input matrix
      INTEGER(LONG), INTENT(IN)       :: NROWA             ! Number of rows in input matrix
      INTEGER(LONG), INTENT(IN)       :: NCOL              ! No. of cols to get from input matrix
      INTEGER(LONG), INTENT(IN)       :: NROW              ! No. of rows to get from input matrix
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATGET_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: A(NROWA*NCOLA)    ! Input matrix from which a partition will be extracted
      REAL(DOUBLE) , INTENT(OUT)      :: B(NROW*NCOL)      ! Output matrix, which is the partition extracted from A
 
      END SUBROUTINE MATGET

   END INTERFACE

   END MODULE MATGET_Interface

