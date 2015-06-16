! ##################################################################################################################################

   MODULE BUILD_G_NM_Interface

   INTERFACE

      SUBROUTINE BUILD_G_NM

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  NDOFG, NDOFM, NDOFN, NTERM_GMN, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BUILD_G_NM_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE
      USE PARAMS, ONLY                :  PRTDISP
      USE SPARSE_MATRICES, ONLY       :  I_GMN, J_GMN, GMN, SYM_GMN
      USE COL_VECS, ONLY              :  UG_COL, UM_COL, UN_COL 
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: NUMCOLS     = 1   ! Variable for number of cols of an array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BUILD_G_NM_BEGEND
 
      END SUBROUTINE BUILD_G_NM

   END INTERFACE

   END MODULE BUILD_G_NM_Interface

