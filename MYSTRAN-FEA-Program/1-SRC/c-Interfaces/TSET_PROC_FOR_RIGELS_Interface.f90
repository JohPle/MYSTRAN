! ##################################################################################################################################

   MODULE TSET_PROC_FOR_RIGELS_Interface

   INTERFACE

      SUBROUTINE TSET_PROC_FOR_RIGELS ( IERRT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, L1F, L1F_MSG, LINK1F
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LIND_GRDS_MPCS, NDOFM, NGRID, NIND_GRDS_MPCS, NRECARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID, MPC_IND_GRIDS
 
      INTEGER(LONG), INTENT(INOUT)    :: IERRT             ! Sum of all grid and DOF errors
      INTEGER(LONG)                   :: IDUM(6)           ! Integer values read that are not used
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND + 1

      REAL(DOUBLE)                    :: RDUM              ! Real value read that is not used

      END SUBROUTINE TSET_PROC_FOR_RIGELS

   END INTERFACE

   END MODULE TSET_PROC_FOR_RIGELS_Interface

