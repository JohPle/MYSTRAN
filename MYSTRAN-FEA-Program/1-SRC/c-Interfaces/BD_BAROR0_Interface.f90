! ##################################################################################################################################

   MODULE BD_BAROR0_Interface

   INTERFACE

      SUBROUTINE BD_BAROR0 ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF, LVVEC, NBAROR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_BAROR0_BEGEND
      USE MODEL_STUF, ONLY            :  BAROR_PID, BAROR_G0, BAROR_VV, BAROR_VVEC_TYPE, JBAROR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_BAROR0_BEGEND
 
      END SUBROUTINE BD_BAROR0

   END INTERFACE

   END MODULE BD_BAROR0_Interface

