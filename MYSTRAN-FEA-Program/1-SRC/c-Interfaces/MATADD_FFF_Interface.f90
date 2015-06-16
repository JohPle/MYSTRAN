! ##################################################################################################################################

   MODULE MATADD_FFF_Interface

   INTERFACE

      SUBROUTINE MATADD_FFF ( A, B, NROW, NCOL, ALPHA, BETA, ITRNSPB, C)

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATADD_FFF_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: NROW              ! Number of rows in matrces A, B, C
      INTEGER(LONG), INTENT(IN)       :: NCOL              ! Number of cols in matrces A, B, C
      INTEGER(LONG), INTENT(IN)       :: ITRNSPB           ! Transpose indicator for matrix B
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATADD_FFF_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: A(NROW,NCOL)      ! Input  matrix A
      REAL(DOUBLE) , INTENT(IN)       :: B(NROW,NCOL)      ! Input  matrix B
      REAL(DOUBLE) , INTENT(IN)       :: ALPHA             ! Scalar multiplier for matrix A
      REAL(DOUBLE) , INTENT(IN)       :: BETA              ! Scalar multiplier for matrix B

      REAL(DOUBLE) , INTENT(OUT)      :: C(NROW,NCOL)      ! Output matrix C
 
      END SUBROUTINE MATADD_FFF

   END INTERFACE

   END MODULE MATADD_FFF_Interface

