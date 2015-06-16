! ##################################################################################################################################

   MODULE LEFT_ADJ_BDFLD_Interface

   INTERFACE

      SUBROUTINE LEFT_ADJ_BDFLD ( CHR_FLD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  LEFT_ADJ_BDFLD_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=JCARD_LEN), INTENT(INOUT):: CHR_FLD           ! Char field to left adjust and return
 
      INTEGER(LONG), PARAMETER               :: SUBR_BEGEND = LEFT_ADJ_BDFLD_BEGEND
 
      END SUBROUTINE LEFT_ADJ_BDFLD

   END INTERFACE

   END MODULE LEFT_ADJ_BDFLD_Interface

