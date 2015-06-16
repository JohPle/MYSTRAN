! ##################################################################################################################################

   MODULE BD_PMASS_Interface

   INTERFACE

      SUBROUTINE BD_PMASS ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NPMASS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PMASS_BEGEND
      USE MODEL_STUF, ONLY            :  PMASS, RPMASS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PMASS_BEGEND
 
      END SUBROUTINE BD_PMASS

   END INTERFACE

   END MODULE BD_PMASS_Interface

