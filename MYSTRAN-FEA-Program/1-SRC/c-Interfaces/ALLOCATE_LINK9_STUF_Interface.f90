! ##################################################################################################################################

   MODULE ALLOCATE_LINK9_STUF_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_LINK9_STUF ( CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, ONEPP6
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MELGP, MMSPRNT, MOGEL, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_LINK9_STUF_BEGEND
      USE LINK9_STUFF, ONLY           :  GID_OUT_ARRAY, EID_OUT_ARRAY, FTNAME, MAXREQ, MSPRNT, OGEL, POLY_FIT_ERR,                 &
                                         POLY_FIT_ERR_INDEX
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_LINK9_STUF_BEGEND
 
      END SUBROUTINE ALLOCATE_LINK9_STUF

   END INTERFACE

   END MODULE ALLOCATE_LINK9_STUF_Interface

