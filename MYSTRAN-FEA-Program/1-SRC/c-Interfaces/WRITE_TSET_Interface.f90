! ##################################################################################################################################

   MODULE WRITE_TSET_Interface

   INTERFACE

      SUBROUTINE WRITE_TSET


      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MTSET, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID, GRID_SEQ, INV_GRID_SEQ
      USE DOF_TABLES, ONLY            :  TSET
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_TSET_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_TSET_BEGEND

      END SUBROUTINE WRITE_TSET

   END INTERFACE

   END MODULE WRITE_TSET_Interface

