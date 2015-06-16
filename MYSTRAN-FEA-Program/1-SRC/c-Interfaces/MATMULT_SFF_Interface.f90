! ##################################################################################################################################

   MODULE MATMULT_SFF_Interface

   INTERFACE

      SUBROUTINE MATMULT_SFF ( MAT_A_NAME, NROWS_A, NCOLS_A, NTERM_A, SYM_A, I_A, J_A, A, MAT_B_NAME, NROWS_B, NCOLS_B, B,         &

                               WRITE_SC1, MAT_C_NAME, CONS, C )

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATMULT_SFF_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SPARSE_ALG_ARRAYS, ONLY     :  AROW, J_AROW
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_A_NAME        ! Name of matrix A
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_B_NAME        ! Name of matrix B
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_C_NAME        ! Name of matrix C
      CHARACTER(LEN=*), INTENT(IN)    :: SYM_A             ! ='Y' if matrix A is input symmetric (terms on and above diag only)
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_SC1         ! ='Y' if we need to write to screen to advance 1 line before write msg

      INTEGER(LONG), INTENT(IN )      :: NROWS_B           ! Number of rows in input matrix B
      INTEGER(LONG), INTENT(IN )      :: NCOLS_A           ! NUMBER OF COLS IN INPUT MATRIX A
      INTEGER(LONG), INTENT(IN )      :: NCOLS_B           ! Number of cols in input matrix B
      INTEGER(LONG), INTENT(IN )      :: NROWS_A           ! Number of rows in input matrix A
      INTEGER(LONG), INTENT(IN )      :: NTERM_A           ! Number of nonzero terms in input  matrix A
      INTEGER(LONG), INTENT(IN )      :: I_A(NROWS_A+1)    ! I_A(I+1) - I_A(I) = num nonzeros in row I of matrix A (CRS)
      INTEGER(LONG), INTENT(IN )      :: J_A(NTERM_A)      ! Col no's for nonzero terms in matrix A
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATMULT_SFF_BEGEND
       
      REAL(DOUBLE) , INTENT(IN )      :: A(NTERM_A)        ! Nonzero values in matrix A
      REAL(DOUBLE) , INTENT(IN )      :: B(NROWS_B,NCOLS_B)! Real values in matrix B
      REAL(DOUBLE) , INTENT(OUT)      :: C(NROWS_A,NCOLS_B)! Real values in matrix c
      REAL(DOUBLE) , INTENT(IN )      :: CONS              ! Constant multiplier in cons*A*B to get C

      END SUBROUTINE MATMULT_SFF

   END INTERFACE

   END MODULE MATMULT_SFF_Interface

