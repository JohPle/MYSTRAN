! ##################################################################################################################################

   MODULE GET_MATANGLE_FROM_CID_Interface

   INTERFACE

      SUBROUTINE GET_MATANGLE_FROM_CID ( ACID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NCORD
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  CONV_DEG_RAD, ZERO, ONE
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  CORD, EID, NUM_EMG_FATAL_ERRS, NUM_EMG_FATAL_ERRS, RCORD, TE, THETAM, TYPE
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_MATANGLE_FROM_CID_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: ACID              ! Actual coord system ID for the sys that defines the material axes
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_MATANGLE_FROM_CID_BEGEND
 
      END SUBROUTINE GET_MATANGLE_FROM_CID

   END INTERFACE

   END MODULE GET_MATANGLE_FROM_CID_Interface

