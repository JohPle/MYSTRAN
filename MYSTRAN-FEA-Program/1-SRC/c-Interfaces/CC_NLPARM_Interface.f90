! ##################################################################################################################################

   MODULE CC_NLPARM_Interface

   INTERFACE

      SUBROUTINE CC_NLPARM ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LSUB, NSUB, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_NLPARM_BEGEND
      USE NONLINEAR_PARAMS, ONLY      :  NL_SID
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_NLPARM_BEGEND
 
      END SUBROUTINE CC_NLPARM

   END INTERFACE

   END MODULE CC_NLPARM_Interface

