! ##################################################################################################################################

   MODULE SPARSE_CRS_TERM_COUNT_Interface

   INTERFACE

      SUBROUTINE SPARSE_CRS_TERM_COUNT ( NROWS, NTERM_IN, MATIN_NAME, I_MATIN, J_MATIN, NTERM_OUT )

                                                        
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_CRS_TERM_COUNT_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME          ! Name of input matrix
 
      INTEGER(LONG), INTENT(IN)       :: NROWS               ! Number of rows in input matrix, MATIN
      INTEGER(LONG), INTENT(IN)       :: NTERM_IN            ! Number of nonzero terms in input matrix, MATIN
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(NROWS+1)    ! I_MATIN(I+1) - I_MATIN(I) are the number of nonzeros in MATIN row I
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERM_IN)   ! Col numbers for nonzero terms in MATIN
      INTEGER(LONG), INTENT(OUT)      :: NTERM_OUT           ! Number of nonzero terms in output matrix, MATOUT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_CRS_TERM_COUNT_BEGEND

      END SUBROUTINE SPARSE_CRS_TERM_COUNT

   END INTERFACE

   END MODULE SPARSE_CRS_TERM_COUNT_Interface

