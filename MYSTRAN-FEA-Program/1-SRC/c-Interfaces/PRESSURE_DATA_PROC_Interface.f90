! ##################################################################################################################################

   MODULE PRESSURE_DATA_PROC_Interface

   INTERFACE

      SUBROUTINE PRESSURE_DATA_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR,     F04,     F06,     L1Q
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                            LINK1Q
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                            L1Q_MSG
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, DATA_NAM_LEN, FATAL_ERR, JCARD_LEN, LPDAT, LLOADC,            &
                                         MPDAT_PLOAD1, MPDAT_PLOAD2, MPDAT_PLOAD4, MPLOAD4_3D_DATA, NELE, NLOAD, NPCARD,           &
                                         NPLOAD4_3D, NPDAT, NSUB, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  PRESSURE_DATA_PROC_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MODEL_STUF, ONLY            :  LOAD_SIDS, LOAD_FACS, SUBLOD, PDATA, PPNT, PLOAD4_3D_DATA, PTYPE
 
      IMPLICIT NONE
 
      CHARACTER( 8*BYTE)              :: TOKTYP            ! Variable to test whether "THRU" option was used on B.D. PLOAD2 card
      CHARACTER( 8*BYTE)              :: THRU              ! ='Y' if THRU option used on TEMPRB, TEMPP1 continuation card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PRESSURE_DATA_PROC_BEGEND
 
      END SUBROUTINE PRESSURE_DATA_PROC

   END INTERFACE

   END MODULE PRESSURE_DATA_PROC_Interface

