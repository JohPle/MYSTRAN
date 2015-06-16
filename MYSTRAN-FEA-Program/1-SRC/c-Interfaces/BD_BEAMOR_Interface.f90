! ##################################################################################################################################

   MODULE BD_BEAMOR_Interface

   INTERFACE

      SUBROUTINE BD_BEAMOR ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LVVEC, NBEAMOR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_BEAMOR_BEGEND
      USE MODEL_STUF, ONLY            :  BEAMOR_VVEC_TYPE, BEAMOR_G0, BEAMOR_VV, BEAMOR_PID
 
      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_BEAMOR_BEGEND
 
      END SUBROUTINE BD_BEAMOR

   END INTERFACE

   END MODULE BD_BEAMOR_Interface

