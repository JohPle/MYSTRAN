! ##################################################################################################################################

   MODULE PINFLG_Interface

   INTERFACE

      SUBROUTINE PINFLG ( NUM_PFLAG_DOFS )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  PINFLG_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL, SUPWARN
      USE MODEL_STUF, ONLY            :  EID, ELDOF, NUM_EMG_FATAL_ERRS, KE, DOFPIN, TYPE
 
      IMPLICIT NONE 
  
      INTEGER(LONG), INTENT(IN)       :: NUM_PFLAG_DOFS    ! The number of pin flagged DOF's for this element

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PINFLG_BEGEND
  
      END SUBROUTINE PINFLG

   END INTERFACE

   END MODULE PINFLG_Interface

