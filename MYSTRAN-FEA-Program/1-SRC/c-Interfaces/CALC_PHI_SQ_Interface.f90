! ##################################################################################################################################

   MODULE CALC_PHI_SQ_Interface

   INTERFACE

      SUBROUTINE CALC_PHI_SQ ( IERROR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEFE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_PHI_SQ_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWELVE
      USE PARAMS, ONLY                :  CBMIN3, CBMIN4, CBMIN4T, EPSIL, PCMPTSTM, QUAD4TYP
      USE MODEL_STUF, ONLY            :  BENSUM, EID, EMG_IFE, EMG_RFE, ERR_SUB_NAM, NUM_EMG_FATAL_ERRS, INTL_MID, PHI_SQ,  &
                                         PCOMP_PROPS, PLY_NUM, PSI_HAT, SHRSUM, TPLY, TYPE
      IMPLICIT NONE 

      INTEGER(LONG), INTENT(OUT)      :: IERROR            ! Local error indicator
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_PHI_SQ_BEGEND

      END SUBROUTINE CALC_PHI_SQ

   END INTERFACE

   END MODULE CALC_PHI_SQ_Interface

