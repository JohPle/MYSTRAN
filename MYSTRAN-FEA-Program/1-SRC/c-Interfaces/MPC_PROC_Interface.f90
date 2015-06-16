! ##################################################################################################################################

   MODULE MPC_PROC_Interface

   INTERFACE

      SUBROUTINE MPC_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR,     F04,     F06,     L1J,     L1S, LINK1S, L1S_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LMPCADDC, NGRID, NMPC, NMPCADD, NUM_MPCSIDS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MPC_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  GRID_ID, MPCSET, MPCSIDS
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START

      IMPLICIT NONE
 
      CHARACTER( 1*BYTE)              :: MPC_SET_USED      ! 'Y'/'N' indicator if an MPC set in B.D. is used

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MPC_PROC_BEGEND
 
      END SUBROUTINE MPC_PROC

   END INTERFACE

   END MODULE MPC_PROC_Interface

