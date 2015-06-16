! ##################################################################################################################################

   MODULE RFORCE_PROC_Interface

   INTERFACE

      SUBROUTINE RFORCE_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, FILE_NAM_MAXLEN, L1U, LINK1U, L1U_MSG, SC1, SCR, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LLOADC, NCORD, NRFORCE, NGRID, NLOAD, NSUB, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  RFORCE_PROC_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  SUPWARN
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  CORD, GRID, GRID_ID, LOAD_FACS, LOAD_SIDS, RCORD, RGRID, SYS_LOAD, SUBLOD
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: ACID_0    = 0     ! Basic coord system
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RFORCE_PROC_BEGEND
      
      END SUBROUTINE RFORCE_PROC

   END INTERFACE

   END MODULE RFORCE_PROC_Interface

