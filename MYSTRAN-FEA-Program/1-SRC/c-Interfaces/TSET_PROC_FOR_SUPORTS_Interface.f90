! ##################################################################################################################################

   MODULE TSET_PROC_FOR_SUPORTS_Interface

   INTERFACE

      SUBROUTINE TSET_PROC_FOR_SUPORTS ( IERRT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1T, L1T_MSG, LINK1T
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFR, NGRID, NUM_SUPT_CARDS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID
 
      INTEGER(LONG), INTENT(INOUT)    :: IERRT             ! Sum of all grid and DOF errors
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND + 1
 
      END SUBROUTINE TSET_PROC_FOR_SUPORTS

   END INTERFACE

   END MODULE TSET_PROC_FOR_SUPORTS_Interface

