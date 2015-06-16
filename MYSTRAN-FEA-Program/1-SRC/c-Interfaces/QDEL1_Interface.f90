! ##################################################################################################################################

   MODULE QDEL1_Interface

   INTERFACE

      SUBROUTINE QDEL1 ( OPT, WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, ERR, F04, F06, WRT_BUG, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_GAUSS, MEFE
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  QDEL1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, FOUR, TWELVE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  EPSIL, IORQ1B, IORQ1M, IORQ1S, IORQ2B, QUAD4TYP
      USE MODEL_STUF, ONLY            :  EID, ELDOF, EMG_IFE, EMG_RFE, EMAT, ERR_SUB_NAM, EB, INTL_MID, KE,                        &
                                         MASS_PER_UNIT_AREA, NUM_EMG_FATAL_ERRS, ME, PCOMP_LAM, PCOMP_PROPS, SHELL_B, TYPE, XEL
      USE MODEL_STUF, ONLY            :  BENSUM, SHRSUM, PHI_SQ, PSI_HAT
 
      IMPLICIT NONE 
  
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)               ! 'Y'/'N' flags for whether to calc certain elem matrices
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN           ! If 'Y" write warning messages, otherwise do not
      CHARACTER( 1*BYTE)              :: RED_INT_SHEAR        ! If 'Y', use Gaussian weighted average of B matrices for shear terms

      INTEGER(LONG)                   :: GAUSS_PT             ! Gauss point number (used for DEBUG output in subr SHP2DQ
      INTEGER(LONG), PARAMETER        :: IORD_PCOMP = 2       ! Int order for nonsym layup PCOMP must be 2 (checked in subr
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = QDEL1_BEGEND
  
      REAL(DOUBLE)                    :: M0                   ! An intermediate variable used in calc elem mass, ME

      END SUBROUTINE QDEL1

   END INTERFACE

   END MODULE QDEL1_Interface

