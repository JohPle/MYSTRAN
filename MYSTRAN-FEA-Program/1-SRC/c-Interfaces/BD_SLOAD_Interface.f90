! ##################################################################################################################################

   MODULE BD_SLOAD_Interface

   INTERFACE

      SUBROUTINE BD_SLOAD ( CARD, CC_LOAD_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1W
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, FATAL_ERR, IERRFL, JCARD_LEN, JF, LFORCE, LSUB, NFORCE, NSLOAD, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SLOAD_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL, SUPWARN
      USE MODEL_STUF, ONLY            :  SLOAD_SIDS, SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*),INTENT(IN)     :: CARD                ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_LOAD_FND(LSUB,2) ! 'Y' if B.D SLOAD card w/ same set ID (SID) as C.C. LOAD = SID
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SLOAD_BEGEND
  
      END SUBROUTINE BD_SLOAD

   END INTERFACE

   END MODULE BD_SLOAD_Interface

