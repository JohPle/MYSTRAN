! ##################################################################################################################################

   MODULE BD_PBAR_Interface

   INTERFACE

      SUBROUTINE BD_PBAR ( CARD, LARGE_FLD_INP )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE PARAMS, ONLY                :  EPSIL, SUPINFO
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, BARTOR, IERRFL, FATAL_ERR, JCARD_LEN, JF, LPBAR, NPBAR
      USE CONSTANTS_1, ONLY           :  ZERO
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PBAR_BEGEND
      USE MODEL_STUF, ONLY            :  PBAR, RPBAR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PBAR_BEGEND
 
      END SUBROUTINE BD_PBAR

   END INTERFACE

   END MODULE BD_PBAR_Interface

