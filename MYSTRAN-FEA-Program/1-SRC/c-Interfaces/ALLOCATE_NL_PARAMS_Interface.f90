! ##################################################################################################################################

   MODULE ALLOCATE_NL_PARAMS_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_NL_PARAMS ( CALLING_SUBR ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LSUB, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE NONLINEAR_PARAMS, ONLY      :  NL_SID
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_NL_PARAMS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: NCOLS     = 1     ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_NL_PARAMS_BEGEND

      END SUBROUTINE ALLOCATE_NL_PARAMS

   END INTERFACE

   END MODULE ALLOCATE_NL_PARAMS_Interface

