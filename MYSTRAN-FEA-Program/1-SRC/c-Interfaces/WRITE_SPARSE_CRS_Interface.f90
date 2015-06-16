! ##################################################################################################################################

   MODULE WRITE_SPARSE_CRS_Interface

   INTERFACE

      SUBROUTINE WRITE_SPARSE_CRS ( MAT_NAME, ROW_SET, COL_SET, NTERM_A, NROWS_A, I_AXX, J_AXX, AXX )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  SPARSTOR, TINY
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_SPARSE_CRS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: COL_SET           ! Set designator for cols of matrix
      CHARACTER(LEN=*), INTENT(IN)    :: ROW_SET           ! Set designator for rows of matrix
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Input matrix descriptor

      INTEGER(LONG), INTENT(IN)       :: NTERM_A           ! No. of terms in sparse matrix    
      INTEGER(LONG), INTENT(IN)       :: NROWS_A           ! No. of rows  in sparse matrix    
      INTEGER(LONG), INTENT(IN)       :: I_AXX(NROWS_A+1)  ! Array of starting indices for the 1-st term in rows of AXX
      INTEGER(LONG), INTENT(IN)       :: J_AXX(NTERM_A)    ! Array of col no's for terms in matrix AXX
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_SPARSE_CRS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: AXX(NTERM_A)      ! Array of terms in matrix AXX
 
      END SUBROUTINE WRITE_SPARSE_CRS

   END INTERFACE

   END MODULE WRITE_SPARSE_CRS_Interface

