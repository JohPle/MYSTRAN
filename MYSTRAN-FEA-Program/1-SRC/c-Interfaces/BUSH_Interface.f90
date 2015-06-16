! ##################################################################################################################################

   MODULE BUSH_Interface

   INTERFACE

      SUBROUTINE BUSH ( OPT, WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, HALF
      USE MODEL_STUF, ONLY            :  BE1, BE2, EOFF, EPROP, KE, OFFDIS, SE1, SE2
      USE SUBR_BEGEND_LEVELS, ONLY    :  BUSH_BEGEND

      IMPLICIT NONE 
 
      CHARACTER(LEN=*) , INTENT(IN)   :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BUSH_BEGEND

      END SUBROUTINE BUSH

   END INTERFACE

   END MODULE BUSH_Interface

