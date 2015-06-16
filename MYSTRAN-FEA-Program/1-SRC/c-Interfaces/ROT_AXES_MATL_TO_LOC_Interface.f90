! ##################################################################################################################################

   MODULE ROT_AXES_MATL_TO_LOC_Interface

   INTERFACE

      SUBROUTINE ROT_AXES_MATL_TO_LOC ( WRITE_WARN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEMATC, NCORD
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MODEL_STUF, ONLY            :  ALPVEC, CORD, ISOLID, EB, EBM, EM, ES, ET, MTRL_TYPE, NUM_EMG_FATAL_ERRS, QUAD_DELTA,     &
                                         RCORD, TE, THETAM, TYPE
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  ROT_AXES_MATL_TO_LOC_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y' write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ROT_AXES_MATL_TO_LOC_BEGEND

      END SUBROUTINE ROT_AXES_MATL_TO_LOC

   END INTERFACE

   END MODULE ROT_AXES_MATL_TO_LOC_Interface

