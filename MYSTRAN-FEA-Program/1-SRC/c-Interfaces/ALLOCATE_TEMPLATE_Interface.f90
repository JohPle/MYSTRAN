! ##################################################################################################################################

   MODULE ALLOCATE_TEMPLATE_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_TEMPLATE ( CALLING_SUBR )  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_TEMPLATE_BEGEND
      USE STF_TEMPLATE_ARRAYS, ONLY   :  CROW, TEMPLATE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_TEMPLATE_BEGEND

      END SUBROUTINE ALLOCATE_TEMPLATE

   END INTERFACE

   END MODULE ALLOCATE_TEMPLATE_Interface

