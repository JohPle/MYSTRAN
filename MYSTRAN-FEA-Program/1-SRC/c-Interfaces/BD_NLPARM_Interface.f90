! ##################################################################################################################################

   MODULE BD_NLPARM_Interface

   INTERFACE

      SUBROUTINE BD_NLPARM ( CARD, CC_NLSID_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LSUB
      USE TIMDAT, ONLY                :  TSEC
      USE NONLINEAR_PARAMS, ONLY      :  NL_MAXITER, NL_NUM_LOAD_STEPS, NL_SID
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_NLPARM_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*),INTENT(IN)     :: CARD              ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_NLSID_FND(LSUB)! 'Y' if B.D NLPARM card w/ same set ID (SID) as C.C. NLPARM = SID
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_NLPARM_BEGEND

      END SUBROUTINE BD_NLPARM

   END INTERFACE

   END MODULE BD_NLPARM_Interface

