! ##################################################################################################################################

   MODULE BD_BAROR_Interface

   INTERFACE

      SUBROUTINE BD_BAROR ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LVVEC, NBAROR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_BAROR_BEGEND
      USE MODEL_STUF, ONLY            :  BAROR_VVEC_TYPE, BAROR_G0, BAROR_VV, BAROR_PID
 
      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_BAROR_BEGEND
 
      END SUBROUTINE BD_BAROR

   END INTERFACE

   END MODULE BD_BAROR_Interface

