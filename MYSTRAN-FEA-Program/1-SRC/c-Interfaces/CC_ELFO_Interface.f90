! ##################################################################################################################################

   MODULE CC_ELFO_Interface

   INTERFACE

      SUBROUTINE CC_ELFO ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, err
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, CC_CMD_DESCRIBERS, LSUB, NCCCD, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ELFO_BEGEND
      USE MODEL_STUF, ONLY            :  SC_ELFE, SC_ELFN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ELFO_BEGEND
 
      END SUBROUTINE CC_ELFO

   END INTERFACE

   END MODULE CC_ELFO_Interface

