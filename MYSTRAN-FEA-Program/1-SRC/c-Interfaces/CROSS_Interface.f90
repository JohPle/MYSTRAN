! ##################################################################################################################################

   MODULE CROSS_Interface

   INTERFACE

      SUBROUTINE CROSS ( A, B, C )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CROSS_BEGEND
      
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CROSS_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: A(3)              ! Components of input  vector A
      REAL(DOUBLE), INTENT(IN)        :: B(3)              ! Components of input  vector B
      REAL(DOUBLE), INTENT(OUT)       :: C(3)              ! Components of output vector C
 
      END SUBROUTINE CROSS

   END INTERFACE

   END MODULE CROSS_Interface

