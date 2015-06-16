! ##################################################################################################################################

   MODULE TSET_PROC_FOR_OMITS_Interface

   INTERFACE

      SUBROUTINE TSET_PROC_FOR_OMITS ( IERRT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1N, L1N_MSG, LINK1N
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NAOCARD, NDOFO, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID
 
      INTEGER(LONG), INTENT(INOUT)    :: IERRT             ! Sum of all grid and DOF errors
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND + 1
 
      END SUBROUTINE TSET_PROC_FOR_OMITS

   END INTERFACE

   END MODULE TSET_PROC_FOR_OMITS_Interface

