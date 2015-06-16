! ##################################################################################################################################

   MODULE CC_ENFO_Interface

   INTERFACE

      SUBROUTINE CC_ENFO ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ENFFIL, ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ENFO_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ENFO_BEGEND
 
      END SUBROUTINE CC_ENFO

   END INTERFACE

   END MODULE CC_ENFO_Interface

