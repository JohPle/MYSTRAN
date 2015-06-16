! ##################################################################################################################################

   MODULE MERGE_MAT_ROWS_SSS_Interface

   INTERFACE

      SUBROUTINE MERGE_MAT_ROWS_SSS ( MAT_A_NAME, NROW_A, NTERM_A, I_A, J_A, A, MERGE_VEC_VALS_A,                                  &

                                      MAT_B_NAME, NROW_B, NTERM_B, I_B, J_B, B, MERGE_VEC_VALS_B, MERGE_VEC,                       &
                                      MAT_C_NAME,                  I_C, J_C, C )
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SPARSE_ALG_ARRAYS, ONLY     :  LOGICAL_VEC, REAL_VEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MERGE_MAT_ROWS_SSS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_A_NAME              ! Name of matrix A
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_B_NAME              ! Name of matrix B
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_C_NAME              ! Name of matrix C

      INTEGER(LONG), INTENT(IN )      :: NROW_A                  ! Number of rows in matrix A (needed to dimension arrays below)
      INTEGER(LONG), INTENT(IN )      :: NROW_B                  ! Number of rows in matrix B (needed to dimension arrays below)
      INTEGER(LONG), INTENT(IN )      :: NTERM_A                 ! Number of nonzero terms in input matrix A
      INTEGER(LONG), INTENT(IN )      :: NTERM_B                 ! Number of nonzero terms in input matrix B
      INTEGER(LONG), INTENT(IN )      :: I_A(NROW_A+1)           ! I_A(I+1) - I_A(I) = no. terms in row I of matrix A
      INTEGER(LONG), INTENT(IN )      :: I_B(NROW_B+1)           ! I_B(I+1) - I_B(I) = no. terms in row I of matrix B
      INTEGER(LONG), INTENT(IN )      :: J_A(NTERM_A)            ! Col no's for nonzero terms in matrix A
      INTEGER(LONG), INTENT(IN )      :: J_B(NTERM_B)            ! Col no's for nonzero terms in matrix B
      INTEGER(LONG), INTENT(IN )      :: MERGE_VEC(NROW_A+NROW_B)! Vector used in merging rows of A and B into C
      INTEGER(LONG), INTENT(IN )      :: MERGE_VEC_VALS_A        ! Values in MERGE_VEC corresponding to rows in matrix A
      INTEGER(LONG), INTENT(IN )      :: MERGE_VEC_VALS_B        ! Values in MERGE_VEC corresponding to rows in matrix B
      INTEGER(LONG), INTENT(OUT)      :: I_C(NROW_A+NROW_B+1)    ! I_C(I+1) - I_C(I) = no. terms in row I of matrix C
      INTEGER(LONG), INTENT(OUT)      :: J_C(NTERM_A+NTERM_B)    ! Col no's for nonzero terms in matrix C
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MERGE_MAT_ROWS_SSS_BEGEND
       
      REAL(DOUBLE) , INTENT(IN )      :: A(NTERM_A)              ! Nonzero terms in matrix A
      REAL(DOUBLE) , INTENT(IN )      :: B(NTERM_B)              ! Nonzero terms in matrix B
      REAL(DOUBLE) , INTENT(OUT)      :: C(NTERM_A+NTERM_B)      ! Nonzero terms in matrix C

      END SUBROUTINE MERGE_MAT_ROWS_SSS

   END INTERFACE

   END MODULE MERGE_MAT_ROWS_SSS_Interface

