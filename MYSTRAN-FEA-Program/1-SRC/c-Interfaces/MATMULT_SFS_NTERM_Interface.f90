! ##################################################################################################################################

   MODULE MATMULT_SFS_NTERM_Interface

   INTERFACE

      SUBROUTINE MATMULT_SFS_NTERM ( MAT_A_NAME, NROW_A, NTERM_A, SYM_A, I_A, J_A, MAT_B_NAME, NROW_B, NCOL_B, B,  &

                                     AROW_MAX_TERMS, MAT_C_NAME, NTERM_C )
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATMULT_SFS_NTERM_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE SPARSE_ALG_ARRAYS, ONLY     :  J_AROW
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_A_NAME             ! Name of matrix A
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_B_NAME             ! Name of matrix B
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_C_NAME             ! Name of matrix C
      CHARACTER(LEN=*), INTENT(IN)    :: SYM_A                  ! ='Y' if matrix A is input symmetric (terms on and above diag only)

      INTEGER(LONG), INTENT(IN )      :: NROW_B                 ! Number of rows in input matrix B
      INTEGER(LONG), INTENT(IN )      :: NCOL_B                 ! Number of cols in input matrix B
      INTEGER(LONG), INTENT(IN )      :: NROW_A                 ! Number of rows in input matrix A
      INTEGER(LONG), INTENT(IN )      :: NTERM_A                ! Number of nonzero terms in input matrix A
      INTEGER(LONG), INTENT(IN )      :: I_A(NROW_A+1)          ! I_A(I+1) - I_A(I) = no. terms in row I of matrix A
      INTEGER(LONG), INTENT(IN )      :: J_A(NTERM_A)           ! Col no's for nonzero terms in matrix A
      INTEGER(LONG), INTENT(OUT)      :: AROW_MAX_TERMS         ! Max number of terms in any row of A
      INTEGER(LONG), INTENT(OUT)      :: NTERM_C                ! Number of nonzero terms in output matrix C
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATMULT_SFS_NTERM_BEGEND
       
      REAL(DOUBLE) , INTENT(IN )      :: B(NROW_B,NCOL_B)       ! Real values in matrix B

      END SUBROUTINE MATMULT_SFS_NTERM

   END INTERFACE

   END MODULE MATMULT_SFS_NTERM_Interface

