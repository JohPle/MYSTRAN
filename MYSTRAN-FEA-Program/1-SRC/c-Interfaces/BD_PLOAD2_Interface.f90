! ##################################################################################################################################

   MODULE BD_PLOAD2_Interface

   INTERFACE

      SUBROUTINE BD_PLOAD2 ( CARD, CC_LOAD_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1Q
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPLOAD, LSUB, NPCARD, NPLOAD, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PLOAD2_BEGEND
      USE MODEL_STUF, ONLY            :  PRESS_SIDS, SUBLOD

      CHARACTER(LEN=*),INTENT(IN)     :: CARD               ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_LOAD_FND(LSUB,2)! 'Y' if B.D load/temp card w/ same set ID (SID) as C.C. LOAD = SID
 
      INTEGER(LONG)                   :: PLOAD_EID(6)       ! Elem ID's on parent card if "THRU" not used for input
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PLOAD2_BEGEND
  
      END SUBROUTINE BD_PLOAD2

   END INTERFACE

   END MODULE BD_PLOAD2_Interface

