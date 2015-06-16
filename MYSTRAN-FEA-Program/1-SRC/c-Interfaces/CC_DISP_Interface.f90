! ##################################################################################################################################

   MODULE CC_DISP_Interface

   INTERFACE

      SUBROUTINE CC_DISP ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LSUB, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_DISP_BEGEND
      USE MODEL_STUF, ONLY            :  SC_DISP
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_DISP_BEGEND
 
      END SUBROUTINE CC_DISP

   END INTERFACE

   END MODULE CC_DISP_Interface

