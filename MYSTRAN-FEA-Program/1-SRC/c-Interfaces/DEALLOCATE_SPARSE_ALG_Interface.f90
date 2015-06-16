! ##################################################################################################################################

   MODULE DEALLOCATE_SPARSE_ALG_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_SPARSE_ALG ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_SPARSE_ALG_BEGEND
      USE SPARSE_ALG_ARRAYS, ONLY     :  ALG, AROW, J_AROW, LOGICAL_VEC, REAL_VEC
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_SPARSE_ALG_BEGEND
 
      END SUBROUTINE DEALLOCATE_SPARSE_ALG

   END INTERFACE

   END MODULE DEALLOCATE_SPARSE_ALG_Interface

