! ##################################################################################################################################

   MODULE CC_TITL_Interface

   INTERFACE

      SUBROUTINE CC_TITL ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  WARN_ERR, LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_TITL_BEGEND
      USE MODEL_STUF, ONLY            :  TITLE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_TITL_BEGEND
 
      END SUBROUTINE CC_TITL

   END INTERFACE

   END MODULE CC_TITL_Interface

