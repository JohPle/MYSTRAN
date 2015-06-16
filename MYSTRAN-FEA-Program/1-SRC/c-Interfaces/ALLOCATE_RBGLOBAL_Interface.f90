! ##################################################################################################################################

   MODULE ALLOCATE_RBGLOBAL_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_RBGLOBAL ( SET, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  NDOFG, NDOFN, NDOFF, NDOFA, NDOFL, NDOFR, BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_RBGLOBAL_BEGEND
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, RBGLOBAL_NSET, RBGLOBAL_FSET, RBGLOBAL_ASET, RBGLOBAL_LSET,                &
                                         TR6_CG, TR6_MEFM, TR6_0

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: SET               ! Set name of the displ matrix
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(14*BYTE)              :: NAME              ! Specific array name used for output error message
 
      INTEGER(LONG), PARAMETER        :: NCOLS       = 6   ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_RBGLOBAL_BEGEND

      END SUBROUTINE ALLOCATE_RBGLOBAL

   END INTERFACE

   END MODULE ALLOCATE_RBGLOBAL_Interface

