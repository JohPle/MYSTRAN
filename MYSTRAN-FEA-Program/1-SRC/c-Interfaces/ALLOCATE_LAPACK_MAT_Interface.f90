! ##################################################################################################################################

   MODULE ALLOCATE_LAPACK_MAT_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_LAPACK_MAT ( NAME, NROWS, NCOLS, CALLING_SUBR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, ONEPP6
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  WINAMEM
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_LAPACK_MAT_BEGEND
      USE ARPACK_MATRICES_1 , ONLY    :  IWORK, RFAC, RESID, SELECT, VBAS, WORKD, WORKL
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND, BBAND, LAPACK_S, RES

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Name of matrix to be allocated
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in array to be allocated
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols in array to be allocated
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_LAPACK_MAT_BEGEND
 
      END SUBROUTINE ALLOCATE_LAPACK_MAT

   END INTERFACE

   END MODULE ALLOCATE_LAPACK_MAT_Interface

