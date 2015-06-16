! ##################################################################################################################################

   MODULE EPTL_Interface

   INTERFACE

      SUBROUTINE EPTL

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_BUG, WRT_ERR, WRT_FIJ, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_P_T_BIT, ELDT_F22_P_T_BIT, IBIT, MBUG, MELDOF, NCORD, NELE, NGRID, &
                                         NSUB, NTSUB
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE SUBR_BEGEND_LEVELS, ONLY    :  EPTL_BEGEND
      USE MODEL_STUF, ONLY            :  ELDOF, ELDT, GRID, GRID_ID, CORD, AGRID, ELGP, NUM_EMG_FATAL_ERRS, PLY_NUM, PPE, PTE,     &
                                         SYS_LOAD, TYPE, SUBLOD

      IMPLICIT NONE
 
      INTEGER(LONG)                   :: I1                ! Intermediate variable used in setting WRT_BUG(3) and OUT10
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EPTL_BEGEND

      END SUBROUTINE EPTL

   END INTERFACE

   END MODULE EPTL_Interface

