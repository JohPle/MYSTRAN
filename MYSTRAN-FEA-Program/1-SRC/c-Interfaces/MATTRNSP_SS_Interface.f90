! ##################################################################################################################################

   MODULE MATTRNSP_SS_Interface

   INTERFACE

      SUBROUTINE MATTRNSP_SS ( NROWA, NCOLA, NTERM, MAT_A_NAME, I_A, J_A, A, MAT_AT_NAME, I_AT, J_AT, AT )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATTRNSP_SS_BEGEND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_A_NAME        ! Name of matrix to be transposed
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_AT_NAME       ! Name of matrix that is transposed
 
      INTEGER(LONG), INTENT(IN)       :: NCOLA             ! Number of cols in input matrix, A
      INTEGER(LONG), INTENT(IN)       :: NROWA             ! Number of rows in input matrix, A
      INTEGER(LONG), INTENT(IN)       :: NTERM             ! Number of nonzero terms in input matrix, A
      INTEGER(LONG), INTENT(IN)       :: I_A(NROWA+1)      ! I_A(I+1) - I_A(I) are the number of nonzeros in A row I
      INTEGER(LONG), INTENT(IN)       :: J_A(NTERM)        ! Col numbers for nonzero terms in A
      INTEGER(LONG), INTENT(OUT)      :: I_AT(NCOLA+1)     ! I_AT(I+1) - I_AT(I) are the num of nonzeros in AT row I
      INTEGER(LONG), INTENT(OUT)      :: J_AT(NTERM)       ! Col numbers for nonzero terms in AT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATTRNSP_SS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: A(NTERM)          ! Real nonzero values in input  matrix A
      REAL(DOUBLE) , INTENT(OUT)      :: AT(NTERM)         ! Real nonzero values in output matrix AT

      END SUBROUTINE MATTRNSP_SS

   END INTERFACE

   END MODULE MATTRNSP_SS_Interface

