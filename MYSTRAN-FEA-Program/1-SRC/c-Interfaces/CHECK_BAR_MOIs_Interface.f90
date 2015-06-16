! ##################################################################################################################################

   MODULE CHECK_BAR_MOIs_Interface

   INTERFACE

      SUBROUTINE CHECK_BAR_MOIs ( NAME, ID, I1, I2, I12, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC 
      USE PARAMS, ONLY                :  EPSIL, SUPINFO
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  CHECK_BAR_MOIs_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Either PBAR, PBARL or PBEAM
      CHARACTER(LEN=*), INTENT(IN)    :: ID                ! Character value of the bar's ID

      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Error indicator
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CHECK_BAR_MOIs_BEGEND
 
      REAL(DOUBLE), INTENT(INOUT)     :: I1                ! MOI of the bar or beam
      REAL(DOUBLE), INTENT(INOUT)     :: I2                ! MOI of the bar or beam
      REAL(DOUBLE), INTENT(INOUT)     :: I12               ! MOI of the bar or beam

      END SUBROUTINE CHECK_BAR_MOIs

   END INTERFACE

   END MODULE CHECK_BAR_MOIs_Interface

