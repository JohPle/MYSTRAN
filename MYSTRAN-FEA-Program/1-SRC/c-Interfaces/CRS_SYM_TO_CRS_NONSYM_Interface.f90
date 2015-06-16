! ##################################################################################################################################

   MODULE CRS_SYM_TO_CRS_NONSYM_Interface

   INTERFACE

      SUBROUTINE CRS_SYM_TO_CRS_NONSYM ( NAME_A, NROW_A, NTERM_A, I_A, J_A, A, NAME_B, NTERM_B, I_B, J_B, B, WRT_SCREEN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  CRS_SYM_TO_CRS_NONSYM_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_A            ! Name of input matrix
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_B            ! Name of output matrix
      CHARACTER(LEN=*), INTENT(IN)    :: WRT_SCREEN        ! If 'Y' then write msgs to screen
 
      INTEGER(LONG), INTENT(IN)       :: NROW_A            ! Number of rows in input matrix, A
      INTEGER(LONG), INTENT(IN)       :: NTERM_A           ! Number of nonzero terms in input  matrix, A
      INTEGER(LONG), INTENT(IN)       :: NTERM_B           ! Number of nonzero terms in output matrix, B
      INTEGER(LONG), INTENT(IN)       :: I_A(NROW_A+1)     ! I_A(I+1) - I_A(I) are the number of nonzeros in A row I
      INTEGER(LONG), INTENT(IN)       :: J_A(NTERM_A)      ! Col numbers for nonzero terms in A
      INTEGER(LONG), INTENT(OUT)      :: I_B(NROW_A+1)     ! I_B(I+1) - I_B(I) are the num of nonzeros in B row I
      INTEGER(LONG), INTENT(OUT)      :: J_B(NTERM_B)      ! Col numbers for nonzero terms in B
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CRS_SYM_TO_CRS_NONSYM_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: A(NTERM_A)        ! Real nonzero values in input  matrix A
      REAL(DOUBLE) , INTENT(OUT)      :: B(NTERM_B)        ! Real nonzero values in output matrix B

      END SUBROUTINE CRS_SYM_TO_CRS_NONSYM

   END INTERFACE

   END MODULE CRS_SYM_TO_CRS_NONSYM_Interface

