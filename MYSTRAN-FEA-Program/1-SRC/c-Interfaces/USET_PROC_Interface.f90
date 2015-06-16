! ##################################################################################################################################

   MODULE USET_PROC_Interface

   INTERFACE

      SUBROUTINE USET_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, L1X, L1X_MSG, LINK1X
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ENFORCED, FATAL_ERR, NGRID, NUM_USET_RECORDS, NUM_USET_U1, NUM_USET_U2
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  USET_PROC_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, USET
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'USET_PROC'
 
      INTEGER(LONG)                   :: USET_ERR   = 0    ! Count of errors that result from setting displ sets in USET
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = USET_PROC_BEGEND
 
      END SUBROUTINE USET_PROC

   END INTERFACE

   END MODULE USET_PROC_Interface

