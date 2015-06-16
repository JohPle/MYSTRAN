! ##################################################################################################################################

   MODULE ORDER_TRIA_Interface

   INTERFACE

      SUBROUTINE ORDER_TRIA ( KORDER, SS_I, SS_J, HH_IJ )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_TRIA
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ORDER_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, SIXTH, THIRD, HALF, TWO
  
      IMPLICIT NONE
   
      INTEGER(LONG), INTENT(IN)       :: KORDER                ! Triangular integration order to use
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ORDER_BEGEND
  
      REAL(DOUBLE) ,INTENT(OUT)       :: SS_I(MAX_ORDER_TRIA)  ! Triangular integration abscissa's
      REAL(DOUBLE) ,INTENT(OUT)       :: SS_J(MAX_ORDER_TRIA)  ! Triangular integration abscissa's
      REAL(DOUBLE) ,INTENT(OUT)       :: HH_IJ(MAX_ORDER_TRIA) ! Triangular integration weight coeffs
      REAL(DOUBLE) , PARAMETER        :: A1 = .0597158717D0    ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: A2 = .7974269853D0    ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: B1 = .4701420641D0    ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: B2 = .1012865073D0    ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: W1 = .1125D0          ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: W2 = .0661970763D0    ! Intermediate constant
      REAL(DOUBLE) , PARAMETER        :: W3 = .0629695902D0    ! Intermediate constant
  
      END SUBROUTINE ORDER_TRIA

   END INTERFACE

   END MODULE ORDER_TRIA_Interface

