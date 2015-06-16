! ##################################################################################################################################

   MODULE GRAV_PROC_Interface

   INTERFACE

      SUBROUTINE GRAV_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, ERR, F04, F06, SCR, L1P, LINK1P, L1P_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LLOADC, NCORD, NGRAV, NGRID, NLOAD, NSUB, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GRAV_PROC_BEGEND
      USE PARAMS, ONLY                :  SUPWARN
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  CORD, GRID, GRID_ID, LOAD_FACS, LOAD_SIDS, RCORD, RGRID, SYS_LOAD, SUBLOD
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: ACID_0    = 0     ! Basic coord system
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GRAV_PROC_BEGEND
      
      END SUBROUTINE GRAV_PROC

   END INTERFACE

   END MODULE GRAV_PROC_Interface

