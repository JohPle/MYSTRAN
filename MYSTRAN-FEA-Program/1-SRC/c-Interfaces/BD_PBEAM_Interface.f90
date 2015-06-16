! ##################################################################################################################################

   MODULE BD_PBEAM_Interface

   INTERFACE

      SUBROUTINE BD_PBEAM ( CARD, LARGE_FLD_INP )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE PARAMS, ONLY                :  EPSIL
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, BEAMTOR, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPBEAM, NPBEAM
      USE CONSTANTS_1, ONLY           :  ZERO
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PBEAM_BEGEND
      USE MODEL_STUF, ONLY            :  PBEAM, RPBEAM
      USE PARAMS, ONLY                :  SUPINFO
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD               ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PBEAM_BEGEND

      END SUBROUTINE BD_PBEAM

   END INTERFACE

   END MODULE BD_PBEAM_Interface

