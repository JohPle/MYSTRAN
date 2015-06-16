! ##################################################################################################################################

   MODULE ELMOFF_Interface

   INTERFACE

      SUBROUTINE ELMOFF ( OPT, WRITE_WARN ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_STRESS_POINTS, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMOFF_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MODEL_STUF, ONLY            :  CAN_ELEM_TYPE_OFFSET, ELDOF, ELGP, EID, KE, ME, NUM_EMG_FATAL_ERRS,                       &
                                         OFFDIS, OFFSET, PPE, PTE, SE1, SE2, SE3, TYPE
 
      IMPLICIT NONE

      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMOFF_BEGEND
 
      END SUBROUTINE ELMOFF

   END INTERFACE

   END MODULE ELMOFF_Interface

