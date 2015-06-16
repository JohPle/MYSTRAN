! ##################################################################################################################################

   MODULE CC_SPCF_Interface

   INTERFACE

      SUBROUTINE CC_SPCF ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LSUB, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_SPCF_BEGEND
      USE MODEL_STUF, ONLY            :  SC_SPCF
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_SPCF_BEGEND
 
      END SUBROUTINE CC_SPCF

   END INTERFACE

   END MODULE CC_SPCF_Interface

