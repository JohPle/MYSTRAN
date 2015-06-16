! ##################################################################################################################################

   MODULE SPARSE_CRS_SPARSE_CCS_Interface

   INTERFACE

      SUBROUTINE SPARSE_CRS_SPARSE_CCS ( NROWS_A, NCOLS_A, NTERMS_A, MAT_A_NAME, I_A, J_A, A, MAT_B_NAME, J_B, I_B, B, WRT_SCREEN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_CRS_SPARSE_CCS_BEGEND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_A_NAME        ! Name of input  matrix in CRS format
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_B_NAME        ! Name of output matrix in CCS format
      CHARACTER(LEN=*), INTENT(IN)    :: WRT_SCREEN        ! If 'Y' then write msgs to screen
 
      INTEGER(LONG), INTENT(IN)       :: NCOLS_A           ! Number of cols in input matrix, A (and output matrix B)
      INTEGER(LONG), INTENT(IN)       :: NROWS_A           ! Number of rows in input matrix, A (and output matrix B)
      INTEGER(LONG), INTENT(IN)       :: NTERMS_A          ! Number of nonzero terms in input matrix, A (and output matrix B)
      INTEGER(LONG), INTENT(IN)       :: I_A(NROWS_A+1)    ! I_A(I+1) - I_A(I) are the number of nonzeros in A row I
      INTEGER(LONG), INTENT(IN)       :: J_A(NTERMS_A)     ! Col numbers for nonzero terms in A
      INTEGER(LONG), INTENT(OUT)      :: I_B(NTERMS_A)     ! Row numbers for nonzero terms in B
      INTEGER(LONG), INTENT(OUT)      :: J_B(NCOLS_A+1)    ! J_B(I+1) - J_B(I) are the number of nonzeros in B col I
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_CRS_SPARSE_CCS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: A(NTERMS_A)       ! Real nonzero values in input  matrix A
      REAL(DOUBLE) , INTENT(OUT)      :: B(NTERMS_A)       ! Real nonzero values in output matrix B

      END SUBROUTINE SPARSE_CRS_SPARSE_CCS

   END INTERFACE

   END MODULE SPARSE_CRS_SPARSE_CCS_Interface

