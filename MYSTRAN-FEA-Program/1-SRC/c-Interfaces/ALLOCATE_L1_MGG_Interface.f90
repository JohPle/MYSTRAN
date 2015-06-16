! ##################################################################################################################################

   MODULE ALLOCATE_L1_MGG_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_L1_MGG ( NAME, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, NTERM_MGG, NTERM_MGGC, NTERM_MGGE, NTERM_MGGS,            &
                                         TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_L1_MGG_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_MGG, I2_MGG, J_MGG, MGG, I_MGGC, J_MGGC, MGGC, I_MGGE, J_MGGE, MGGE, I_MGGS, J_MGGS, MGGS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Name of matrix to be allocated
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(6*BYTE)               :: NAMEO             ! Array name (used for output error message)

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_L1_MGG_BEGEND

      END SUBROUTINE ALLOCATE_L1_MGG

   END INTERFACE

   END MODULE ALLOCATE_L1_MGG_Interface

