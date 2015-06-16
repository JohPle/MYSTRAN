! ##################################################################################################################################

   MODULE ORDER_TETRA_Interface

   INTERFACE

      SUBROUTINE ORDER_TETRA ( KORDER, SSS_I, SSS_J, SSS_K, HHH_IJK )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_TETRA
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ORDER_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, SIXTH, QUARTER, HALF, ONE, TWO, TWELVE
  
      IMPLICIT NONE
   
      INTEGER(LONG), INTENT(IN)       :: KORDER                   ! Triangular integration order to use
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ORDER_BEGEND
  
      REAL(DOUBLE) , INTENT(OUT)      :: SSS_I (MAX_ORDER_TETRA)  ! Gauss abscissa's
      REAL(DOUBLE) , INTENT(OUT)      :: SSS_J (MAX_ORDER_TETRA)  ! Gauss abscissa's
      REAL(DOUBLE) , INTENT(OUT)      :: SSS_K (MAX_ORDER_TETRA)  ! Gauss abscissa's
      REAL(DOUBLE) , INTENT(OUT)      :: HHH_IJK(MAX_ORDER_TETRA) ! Gauss weight coeffs
      REAL(DOUBLE) , PARAMETER        :: ALPHA = .58541020D0      ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: BETA  = .13819660D0      ! Intermediate constant
  
      END SUBROUTINE ORDER_TETRA

   END INTERFACE

   END MODULE ORDER_TETRA_Interface

