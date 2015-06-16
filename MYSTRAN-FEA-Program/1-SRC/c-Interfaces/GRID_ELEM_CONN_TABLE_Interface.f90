! ##################################################################################################################################

   MODULE GRID_ELEM_CONN_TABLE_Interface

   INTERFACE

      SUBROUTINE GRID_ELEM_CONN_TABLE


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MAX_ELEM_DEGREE, NELE, NGRID
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  AGRID, ELGP, ETYPE, ESORT1, ESORT2, GRID_ID, GRID_ELEM_CONN_ARRAY 
      USE PARAMS, ONLY                :  PRTCONN 
      USE SUBR_BEGEND_LEVELS, ONLY    :  GRID_ELEM_CONN_TABLE_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GRID_ELEM_CONN_TABLE_BEGEND

      END SUBROUTINE GRID_ELEM_CONN_TABLE

   END INTERFACE

   END MODULE GRID_ELEM_CONN_TABLE_Interface

