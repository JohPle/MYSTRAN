! ##################################################################################################################################

   MODULE BUILD_N_FS_Interface

   INTERFACE

      SUBROUTINE BUILD_N_FS

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  NDOFF, NDOFN, NDOFS, NDOFSE, NDOFSZ, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BUILD_N_FS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  PRTDISP
      USE COL_VECS, ONLY              :  UF_COL, UN_COL, US_COL, YSe
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BUILD_N_FS_BEGEND

      END SUBROUTINE BUILD_N_FS

   END INTERFACE

   END MODULE BUILD_N_FS_Interface

