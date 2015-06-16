! ##################################################################################################################################

   MODULE ELMGM3_Interface

   INTERFACE

      SUBROUTINE ELMGM3 ( WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, BUG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEFE, MELGP
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMGM3_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, HALF, ONE, TWO  
      USE PARAMS, ONLY                :  EPSIL, HEXAXIS
      USE MODEL_STUF, ONLY            :  EID, ELGP, EMG_IFE, ERR_SUB_NAM, HEXA_DELTA, HEXA_GAMMA, HEXA_THETA,                      &
                                         NUM_EMG_FATAL_ERRS, TE, TE_IDENT, TYPE, XEB, XEL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG)                   :: SIDE_GRID1        ! Used for error output purposes
      INTEGER(LONG)                   :: SIDE_GRID2        ! Used for error output purposes
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMGM3_BEGEND

      REAL(DOUBLE)                    :: HEXA_HBAR         ! Warp of HEXA element (only used in calc initial x direction along
      END SUBROUTINE ELMGM3

   END INTERFACE

   END MODULE ELMGM3_Interface

