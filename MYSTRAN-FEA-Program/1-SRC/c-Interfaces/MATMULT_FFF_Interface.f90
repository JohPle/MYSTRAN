! ##################################################################################################################################

   MODULE MATMULT_FFF_Interface

   INTERFACE

      SUBROUTINE MATMULT_FFF ( A, B, NROWA, NCOLA, NCOLB, C )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATMULT_FFF_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: NROWA             ! No. rows in input matrix A
      INTEGER(LONG), INTENT(IN)       :: NCOLA             ! No. cols in input matrix A 
      INTEGER(LONG), INTENT(IN)       :: NCOLB             ! No. cols in input matrix B 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATMULT_FFF_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: A(NROWA,NCOLA)    ! Input  matrix A
      REAL(DOUBLE) , INTENT(IN)       :: B(NCOLA,NCOLB)    ! Input  matrix B
      REAL(DOUBLE) , INTENT(OUT)      :: C(NROWA,NCOLB)    ! Output matrix C
 
      END SUBROUTINE MATMULT_FFF

   END INTERFACE

   END MODULE MATMULT_FFF_Interface

