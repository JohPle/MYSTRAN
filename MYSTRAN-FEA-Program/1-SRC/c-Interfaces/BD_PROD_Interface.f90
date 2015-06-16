! ##################################################################################################################################

   MODULE BD_PROD_Interface

   INTERFACE

      SUBROUTINE BD_PROD ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPROD, NPROD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PROD_BEGEND
      USE MODEL_STUF, ONLY            :  PROD, RPROD

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PROD_BEGEND
 
      END SUBROUTINE BD_PROD

   END INTERFACE

   END MODULE BD_PROD_Interface

