! ##################################################################################################################################

   MODULE FORCE_MOM_PROC_Interface

   INTERFACE

      SUBROUTINE FORCE_MOM_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SCR, L1I, LINK1I, L1I_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LLOADC, NCORD, NFORCE, NGRID, NLOAD, NSUB, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  FORCE_MOM_PROC_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  EPSIL, SUPWARN
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  LOAD_SIDS, LOAD_FACS, SYS_LOAD, SUBLOD, GRID, GRID_ID, CORD
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FORCE_MOM_PROC_BEGEND

      END SUBROUTINE FORCE_MOM_PROC

   END INTERFACE

   END MODULE FORCE_MOM_PROC_Interface

