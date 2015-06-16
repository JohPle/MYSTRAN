! ##################################################################################################################################

   MODULE BD_CMASS2_Interface

   INTERFACE

      SUBROUTINE BD_CMASS2 ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NCMASS, NPMASS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CMASS_BEGEND
      USE MODEL_STUF, ONLY            :  CMASS, PMASS, RPMASS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CMASS_BEGEND
 
      END SUBROUTINE BD_CMASS2

   END INTERFACE

   END MODULE BD_CMASS2_Interface

