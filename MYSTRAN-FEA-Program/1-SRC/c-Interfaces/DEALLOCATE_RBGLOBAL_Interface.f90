! ##################################################################################################################################

   MODULE DEALLOCATE_RBGLOBAL_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_RBGLOBAL ( SET )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC          
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_RBGLOBAL_BEGEND
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, RBGLOBAL_NSET, RBGLOBAL_FSET, RBGLOBAL_ASET, RBGLOBAL_LSET,                &
                                         TR6_CG, TR6_MEFM, TR6_0

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: SET               ! Set name of the displ matrix
      CHARACTER(13*BYTE)              :: NAME              ! Specific array name used for output error message
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_RBGLOBAL_BEGEND
 
      END SUBROUTINE DEALLOCATE_RBGLOBAL

   END INTERFACE

   END MODULE DEALLOCATE_RBGLOBAL_Interface

