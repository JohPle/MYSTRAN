! ##################################################################################################################################

   MODULE CC_SPC_Interface

   INTERFACE

      SUBROUTINE CC_SPC ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_SPC_BEGEND
      USE MODEL_STUF, ONLY            :  SPCSETS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_SPC_BEGEND
 
      END SUBROUTINE CC_SPC

   END INTERFACE

   END MODULE CC_SPC_Interface

