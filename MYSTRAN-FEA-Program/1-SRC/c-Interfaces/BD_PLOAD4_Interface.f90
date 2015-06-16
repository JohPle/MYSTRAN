! ##################################################################################################################################

   MODULE BD_PLOAD4_Interface

   INTERFACE

      SUBROUTINE BD_PLOAD4 ( CARD, CC_LOAD_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1Q
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPLOAD, LSUB, NPCARD, NPLOAD,             &
                                         NPLOAD4_3D, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PLOAD4_BEGEND
      USE MODEL_STUF, ONLY            :  PRESS_SIDS, SUBLOD

      CHARACTER(LEN=*),INTENT(IN)     :: CARD               ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_LOAD_FND(LSUB,2)! 'Y' if B.D load/temp card w/ same set ID (SID) as C.C. LOAD = SID
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PLOAD4_BEGEND
  
      END SUBROUTINE BD_PLOAD4

   END INTERFACE

   END MODULE BD_PLOAD4_Interface

