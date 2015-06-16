! ##################################################################################################################################

   MODULE BD_PBARL_Interface

   INTERFACE

      SUBROUTINE BD_PBARL ( CARD, LARGE_FLD_INP, PBARL_TYPE )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE DERIVED_DATA_TYPES, ONLY    :  CHAR1_INT1
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, IERRFL, FATAL_ERR, JCARD_LEN, JF, LPBAR, NPBAR, NPBARL
      USE PARAMS, ONLY                :  EPSIL, PBARLSHR, SUPINFO
      USE CONSTANTS_1, ONLY           :  PI, ZERO, QUARTER, THIRD, HALF, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE,     &
                                         TEN, TWELVE

      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  PBAR, RPBAR
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PBARL_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: NS        = 25    ! Dimension of array BAR_SHAPE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(OUT)   :: PBARL_TYPE        ! Name of the cross-section (e.g. I, BAR, etc)
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PBARL_BEGEND
 
      END SUBROUTINE BD_PBARL

   END INTERFACE

   END MODULE BD_PBARL_Interface

