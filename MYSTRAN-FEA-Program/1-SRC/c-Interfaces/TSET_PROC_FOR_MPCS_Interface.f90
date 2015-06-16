! ##################################################################################################################################

   MODULE TSET_PROC_FOR_MPCS_Interface

   INTERFACE

      SUBROUTINE TSET_PROC_FOR_MPCS ( IERRT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1S, L1S_MSG, LINK1S
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LIND_GRDS_MPCS, LMPCADDC, NDOFM, NGRID, NIND_GRDS_MPCS, NMPC,    &
                                         NMPCADD, NTERM_RMG, NUM_MPCSIDS 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  GRID_ID, MPC_IND_GRIDS, MPCSET, MPCSIDS
 
      CHARACTER( 1*BYTE)              :: MPC_SET_USED      ! 'Y'/'N' indicator if an MPC set in B.D. is used
 
      INTEGER(LONG), INTENT(INOUT)    :: IERRT             ! Sum of all grid and DOF errors

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND + 1
 
      END SUBROUTINE TSET_PROC_FOR_MPCS

   END INTERFACE

   END MODULE TSET_PROC_FOR_MPCS_Interface

