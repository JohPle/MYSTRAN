! ##################################################################################################################################

   MODULE RESTART_DATA_FOR_L3_Interface

   INTERFACE

      SUBROUTINE RESTART_DATA_FOR_L3

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE IOUNT1, ONLY                :  L2G, LINK2G, L2G_MSG, L2GSTAT
      USE IOUNT1, ONLY                :  L2H, LINK2H, L2H_MSG, L2HSTAT
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFL, NTERM_KLL, NTERM_PL
      USE TIMDAT, ONLY                :  TSEC 
      USE SPARSE_MATRICES, ONLY       :  I_KLL , J_KLL , KLL ,I_PL , J_PL , PL
      USE SUBR_BEGEND_LEVELS, ONLY    :  RESTART_DATA_FOR_L3_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RESTART_DATA_FOR_L3_BEGEND
 
      END SUBROUTINE RESTART_DATA_FOR_L3

   END INTERFACE

   END MODULE RESTART_DATA_FOR_L3_Interface

