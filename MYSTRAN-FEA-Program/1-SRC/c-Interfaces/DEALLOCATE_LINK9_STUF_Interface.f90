! ##################################################################################################################################

   MODULE DEALLOCATE_LINK9_STUF_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_LINK9_STUF

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_LINK9_STUF_BEGEND
      USE LINK9_STUFF, ONLY           :  GID_OUT_ARRAY, EID_OUT_ARRAY, FTNAME, MSPRNT, OGEL, POLY_FIT_ERR,              &
                                         POLY_FIT_ERR_INDEX
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_LINK9_STUF_BEGEND
 
      END SUBROUTINE DEALLOCATE_LINK9_STUF

   END INTERFACE

   END MODULE DEALLOCATE_LINK9_STUF_Interface

