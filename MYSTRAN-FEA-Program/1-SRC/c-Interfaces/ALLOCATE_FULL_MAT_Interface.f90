! ##################################################################################################################################

   MODULE ALLOCATE_FULL_MAT_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_FULL_MAT ( NAME, NROWS, NCOLS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_FULL_MAT_BEGEND
      USE FULL_MATRICES, ONLY         :  KNN_FULL, KNM_FULL, KMM_FULL, MNN_FULL, MNM_FULL, MMM_FULL, PN_FULL, PM_FULL,             &
                                         KFF_FULL, KFS_FULL, KSS_FULL, MFF_FULL, MFS_FULL, MSS_FULL, PF_FULL, PS_FULL,             &
                                         KAA_FULL, KAO_FULL, KOO_FULL, MAA_FULL, MAO_FULL, MOO_FULL, PA_FULL, PO_FULL,             &
                                         PFYS_FULL, QSYS_FULL, KFSe_FULL, KSSe_FULL,                                               &
                                         RMM_FULL, GMN_FULL, GMNt_FULL, GOA_FULL, GOAt_FULL,HMN_FULL, PHIZG_FULL,                  &
                                         DUM1, DUM2, DUM3

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Nunber of rows in array NAME being allocated
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Nunber of cols in array NAME being allocated
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_FULL_MAT_BEGEND
 
      END SUBROUTINE ALLOCATE_FULL_MAT

   END INTERFACE

   END MODULE ALLOCATE_FULL_MAT_Interface

