! ##################################################################################################################################

   MODULE SPARSE_MAT_DIAG_ZEROS_Interface

   INTERFACE

       SUBROUTINE SPARSE_MAT_DIAG_ZEROS ( NAME, NROWS_A, NTERM_A, I_A, J_A, NUM_A_DIAG_ZEROS )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_MAT_DIAG_ZEROS_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME               ! Name of input matrix

      INTEGER(LONG), INTENT(IN)       :: NROWS_A            ! Number of rows in input matrix A
      INTEGER(LONG), INTENT(IN)       :: NTERM_A            ! Number of nonzero terms in input matrix A
      INTEGER(LONG), INTENT(IN)       :: I_A(NROWS_A+1)     ! Array of row no's for terms in input matrix A
      INTEGER(LONG), INTENT(IN)       :: J_A(NTERM_A)       ! Array of col no's for terms in input matrix A
      INTEGER(LONG), INTENT(OUT)      :: NUM_A_DIAG_ZEROS   ! Number of zero diagonal terms in input matrix A
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_MAT_DIAG_ZEROS_BEGEND

      END SUBROUTINE SPARSE_MAT_DIAG_ZEROS

   END INTERFACE

   END MODULE SPARSE_MAT_DIAG_ZEROS_Interface

