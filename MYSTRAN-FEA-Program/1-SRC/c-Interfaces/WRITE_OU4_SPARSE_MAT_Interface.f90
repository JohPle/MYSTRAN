! ##################################################################################################################################

   MODULE WRITE_OU4_SPARSE_MAT_Interface

   INTERFACE

      SUBROUTINE WRITE_OU4_SPARSE_MAT ( MAT_NAME, NROWS, NCOLS, FORM, SYM, NTERM_MAT, I_MAT, J_MAT, MAT, UNT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, LEN_INPUT_FNAME, OU4, OU4FIL, mou4, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  PRTOU4, SPARSTOR
      USE SCRATCH_MATRICES, ONLY      :  I_CRS1, J_CRS1, CRS1, I_CCS1, J_CCS1, CCS1
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_OU4_SPARSE_MAT_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Matrix name (only 1st 8 characters will be written)
      CHARACTER(LEN=*), INTENT(IN)    :: SYM               ! 'Y' if input matrix is symmetric

      INTEGER(LONG), INTENT(IN)       :: FORM              ! NASTRAN matrix FORM (not really used in MYSTRAN but needed for OUTPUT4)
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols in MAT
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MAT
      INTEGER(LONG), INTENT(IN)       :: NTERM_MAT         ! Number of nonzero terms in MAT
      INTEGER(LONG), INTENT(IN)       :: I_MAT(NROWS+1)    ! Row indicators for MAT: I_MAT(I+1)-I_MAT(i) = no. terms in row I
      INTEGER(LONG), INTENT(IN)       :: J_MAT(NTERM_MAT)  ! Col numbers in MAT
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number where to write matrix
      INTEGER(LONG), PARAMETER        :: IROW        = 1   ! 
      INTEGER(LONG), PARAMETER        :: PREC        = 2   ! Matrix precision (2 indicates double precision)
      INTEGER(LONG), PARAMETER        :: ROW_BEG     = 1   ! 1st row of matrix output to UNT is row 1
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_OU4_SPARSE_MAT_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MAT(NTERM_MAT)    ! Array of terms in matrix MAT
 
      END SUBROUTINE WRITE_OU4_SPARSE_MAT

   END INTERFACE

   END MODULE WRITE_OU4_SPARSE_MAT_Interface

