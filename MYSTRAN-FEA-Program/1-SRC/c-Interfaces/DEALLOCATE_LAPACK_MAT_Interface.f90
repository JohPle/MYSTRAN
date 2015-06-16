! ##################################################################################################################################

   MODULE DEALLOCATE_LAPACK_MAT_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_LAPACK_MAT ( NAME ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_LAPACK_MAT_BEGEND
      USE ARPACK_MATRICES_1 , ONLY    :  IWORK, RFAC, RESID, SELECT, VBAS, WORKD, WORKL
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND, BBAND, LAPACK_S, RES
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Name of matrix to be allocated
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_LAPACK_MAT_BEGEND
 
      END SUBROUTINE DEALLOCATE_LAPACK_MAT

   END INTERFACE

   END MODULE DEALLOCATE_LAPACK_MAT_Interface

