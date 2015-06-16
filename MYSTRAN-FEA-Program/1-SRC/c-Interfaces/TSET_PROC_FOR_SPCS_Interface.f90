! ##################################################################################################################################

   MODULE TSET_PROC_FOR_SPCS_Interface

   INTERFACE

      SUBROUTINE TSET_PROC_FOR_SPCS ( IERRT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1H, L1O, L1O_MSG, LINK1O
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ENFORCED, FATAL_ERR, LSPCADDC, NDOFSB, NDOFSE, NDOFSG, NGRID, NSPCADD,      &
                                         NUM_SPC_RECORDS, NUM_SPC1_RECORDS, NUM_SPCSIDS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID, SPCADD_SIDS, SPCSET, SPCSIDS
 
      INTEGER(LONG), INTENT(INOUT)    :: IERRT             ! Sum of all grid and DOF errors
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND + 1
 
      END SUBROUTINE TSET_PROC_FOR_SPCS

   END INTERFACE

   END MODULE TSET_PROC_FOR_SPCS_Interface

