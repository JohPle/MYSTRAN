! ##################################################################################################################################

   MODULE CALC_VEC_SORT_ORDER_Interface

   INTERFACE

      SUBROUTINE CALC_VEC_SORT_ORDER ( VEC, SORT_ORDER, SORT_INDICES )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_VEC_SORT_ORDER_BEGEND

      IMPLICIT NONE

      CHARACTER( 5*BYTE), INTENT(OUT) :: SORT_ORDER        ! Order in which the VX(i) have been sorted. If none of the tests below
      INTEGER(LONG), INTENT(OUT)      :: SORT_INDICES(3)   ! Indices of VEC in the order from lowest value component to highest
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_VEC_SORT_ORDER_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: VEC(3)            ! A 3 component vector

      END SUBROUTINE CALC_VEC_SORT_ORDER

   END INTERFACE

   END MODULE CALC_VEC_SORT_ORDER_Interface

