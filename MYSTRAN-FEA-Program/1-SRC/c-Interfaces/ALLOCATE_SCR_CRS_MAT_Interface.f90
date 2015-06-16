! ##################################################################################################################################

   MODULE ALLOCATE_SCR_CRS_MAT_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_SCR_CRS_MAT ( NAME, NROWS, NTERMS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_SCR_CRS_MAT_BEGEND
      USE SCRATCH_MATRICES , ONLY     :  I_CRS1, J_CRS1, CRS1, I_CRS2, J_CRS2, CRS2, I_CRS3, J_CRS3, CRS3

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(6*BYTE)               :: NAMEO             ! Array name (used for output error message)
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows for matrix CRSi
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of nonzero terms that will be in matrix CRSi
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_SCR_CRS_MAT_BEGEND

      END SUBROUTINE ALLOCATE_SCR_CRS_MAT

   END INTERFACE

   END MODULE ALLOCATE_SCR_CRS_MAT_Interface

