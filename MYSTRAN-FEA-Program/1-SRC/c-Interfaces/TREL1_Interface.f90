! ##################################################################################################################################

   MODULE TREL1_Interface

   INTERFACE

      SUBROUTINE TREL1 ( OPT, WRITE_WARN )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MEWE, NSUB, NTSUB, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  TREL1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TENTH, ONE, TWO, THREE, TWELVE
      USE PARAMS, ONLY                :  SUPWARN
      USE MODEL_STUF, ONLY            :  EID, ELDOF, EMG_IWE, EMG_RWE, INTL_MID, KE, MASS_PER_UNIT_AREA, ME,                       &
                                         NUM_EMG_FATAL_ERRS, PCOMP_LAM, PCOMP_PROPS, SHELL_B, TYPE, XEL
      USE MODEL_STUF, ONLY            :  BENSUM, SHRSUM, PHI_SQ, PSI_HAT
 
      IMPLICIT NONE 
  
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = TREL1_BEGEND

      REAL(DOUBLE)                    :: M0                ! An intermediate variable used in calc elem mass, ME
  
      END SUBROUTINE TREL1

   END INTERFACE

   END MODULE TREL1_Interface

