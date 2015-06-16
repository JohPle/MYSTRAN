! ##################################################################################################################################

   MODULE BD_CBAR_Interface

   INTERFACE

      SUBROUTINE BD_CBAR ( CARD, LARGE_FLD_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LBAROFF, LVVEC, MEDAT_CBAR, &
                                         MEDAT_CBEAM, NBAROFF, NBAROR, NBEAMOR, NCBAR, NCBEAM, NEDAT, NELE, NVVEC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CBAR_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  BAROFF, BAROR_G0, BEAMOR_G0, BAROR_PID, BEAMOR_PID, BAROR_VVEC_TYPE, BEAMOR_VVEC_TYPE,    &
                                         BAROR_VV, BEAMOR_VV, EDAT, ETYPE, JBAROR, JBEAMOR, VVEC

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CBAR_BEGEND
 
      END SUBROUTINE BD_CBAR

   END INTERFACE

   END MODULE BD_CBAR_Interface

