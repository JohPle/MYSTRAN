! ##################################################################################################################################

   MODULE ELAS1_Interface

   INTERFACE

      SUBROUTINE ELAS1 ( OPT, WRITE_WARN )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELAS1_BEGEND
      USE MODEL_STUF, ONLY            :  AGRID, ELAS_COMP, EID, EPROP, FCONV, KE, SE1, TYPE
 
      IMPLICIT NONE 
  
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELAS1_BEGEND
 
      END SUBROUTINE ELAS1

   END INTERFACE

   END MODULE ELAS1_Interface

