! ##################################################################################################################################

   MODULE BD_PARAM0_Interface

   INTERFACE

      SUBROUTINE BD_PARAM0 ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EPSIL1_SET, IERRFL, JCARD_LEN, JF, MEPSIL, MPBARLU
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL, GRIDSEQ, PBARLDEC, PBARLSHR
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PARAM0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PARAM0_BEGEND

      END SUBROUTINE BD_PARAM0

   END INTERFACE

   END MODULE BD_PARAM0_Interface

