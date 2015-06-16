! ##################################################################################################################################

   MODULE MATPUT_Interface

   INTERFACE

      SUBROUTINE MATPUT ( B, NROWA, NCOLA, BEG_ROW, BEG_COL, NROW, NCOL, A )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATPUT_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: BEG_COL           ! Beginning row of input matrix to get partition from
      INTEGER(LONG), INTENT(IN)       :: BEG_ROW           ! Beginning col of input matrix to get partition from
      INTEGER(LONG), INTENT(IN)       :: NCOLA             ! Number of cols in input matrix
      INTEGER(LONG), INTENT(IN)       :: NROWA             ! Number of rows in input matrix
      INTEGER(LONG), INTENT(IN)       :: NCOL              ! No. of cols to get from input matrix
      INTEGER(LONG), INTENT(IN)       :: NROW              ! No. of rows to get from input matrix
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATPUT_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: B(NROW*NCOL)      ! Input matrix that will be put into A
      REAL(DOUBLE) , INTENT(INOUT)    :: A(NROWA*NCOLA)    ! Output matrix, containing inserted terms from B
 
      END SUBROUTINE MATPUT

   END INTERFACE

   END MODULE MATPUT_Interface

