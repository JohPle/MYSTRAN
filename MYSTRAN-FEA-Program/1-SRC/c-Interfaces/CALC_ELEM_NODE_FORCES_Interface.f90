! ##################################################################################################################################

   MODULE CALC_ELEM_NODE_FORCES_Interface

   INTERFACE

      SUBROUTINE CALC_ELEM_NODE_FORCES

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NGRID, JTSUB, JTSUB_OLD, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_ELEM_NODE_FORCES_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  AGRID, ELAS_COMP, ELDOF, KE, PEL, PTE, UEL, TYPE, SUBLOD
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_ELEM_NODE_FORCES_BEGEND
 
      END SUBROUTINE CALC_ELEM_NODE_FORCES

   END INTERFACE

   END MODULE CALC_ELEM_NODE_FORCES_Interface

