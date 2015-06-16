! ##################################################################################################################################

   MODULE BD_TEMPRP_Interface

   INTERFACE

      SUBROUTINE BD_TEMPRP ( CARD, LARGE_FLD_INP, CC_LOAD_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1K
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LSUB, MTDAT_TEMPRB, MTDAT_TEMPP1, NSUB,   &
                                         NTCARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_TEMPRP_BEGEND
      USE MODEL_STUF, ONLY            :  SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD                ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_LOAD_FND(LSUB,2) ! 'Y' if B.D load/temp card w/ same set ID (SID) as C.C. LOAD = SID
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG)                   :: CONT_CARD_NUM  = 0  ! Count of continuation cards (used for output error messages)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_TEMPRP_BEGEND
  
      END SUBROUTINE BD_TEMPRP

   END INTERFACE

   END MODULE BD_TEMPRP_Interface

