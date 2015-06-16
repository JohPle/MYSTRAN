! ##################################################################################################################################

   MODULE WRITE_USET_Interface

   INTERFACE

      SUBROUTINE WRITE_USET


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MTSET, NDOFG, NGRID, NUM_USET_U1, NUM_USET_U2
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID, GRID_SEQ, INV_GRID_SEQ
      USE PARAMS, ONLY                :  PRTUSET
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_USET_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, USET, USETSTR_TABLE

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'WRITE_USET'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_USET_BEGEND

      END SUBROUTINE WRITE_USET

   END INTERFACE

   END MODULE WRITE_USET_Interface

