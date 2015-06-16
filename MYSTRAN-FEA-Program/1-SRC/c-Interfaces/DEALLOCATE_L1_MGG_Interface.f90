! ##################################################################################################################################

   MODULE DEALLOCATE_L1_MGG_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_L1_MGG ( NAME_IN ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_L1_MGG_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_MGG, I2_MGG, J_MGG, MGG, I_MGGC, J_MGGC, MGGC, I_MGGE, J_MGGE, MGGE, I_MGGS, J_MGGS, MGGS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Name of matrix to be allocated
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_L1_MGG_BEGEND

      END SUBROUTINE DEALLOCATE_L1_MGG

   END INTERFACE

   END MODULE DEALLOCATE_L1_MGG_Interface

