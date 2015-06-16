! ##################################################################################################################################

   MODULE YS_ARRAY_Interface

   INTERFACE

      SUBROUTINE YS_ARRAY

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR,     F04,     F06,    L1H
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                           LINK1H
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                           L1H_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFSE, NGRID
      USE TIMDAT, ONLY                :  STIME, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  YS_ARRAY_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE COL_VECS, ONLY              :  YSe
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = YS_ARRAY_BEGEND
 
      END SUBROUTINE YS_ARRAY

   END INTERFACE

   END MODULE YS_ARRAY_Interface

