! ##################################################################################################################################

   MODULE LOADB_Interface

   INTERFACE

      SUBROUTINE LOADB

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, IN1
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, ECHO, FATAL_ERR, IMB_BLANK, JF, LIND_GRDS_MPCS,               &
                                         LSUB, LLOADC, LMPCADDC, LSPCADDC, MDT, MTDAT_TEMPP1, MTDAT_TEMPRB,                        &
                                         MAX_GAUSS_POINTS, MAX_STRESS_POINTS,                                                      &
                                         MELGP, MELDOF, MMPC, MOFFSET, NBAROR, NCBAR, NCBUSH, NCQUAD4, NCQUAD4K, NCROD, NCTRIA3,   &
                                         NCTRIA3K, NFORCE,NGRAV, NGRDSET, NGRID, NLOAD, NMPC, NMPCADD, NPBAR, NPBARL, NPLOAD,      &
                                         NPCOMP, NRBAR, NRBE1, NRBE2, NRFORCE, NRSPLINE, NSLOAD, NSPOINT, NSPC, NSPC1, NSPCADD,    &
                                         NSUB, NUM_MPCSIDS, NUM_PARTVEC_RECORDS, PROG_NAME, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  GRIDSEQ, IORQ1M, IORQ1S, IORQ1B, IORQ2B, IORQ2T, QUADAXIS, SUPINFO, SUPWARN
      USE OUTPUT4_MATRICES, ONLY      :  NUM_PARTN_REQUESTS
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADB_BEGEND 
      USE MODEL_STUF, ONLY            :  FORMOM_SIDS, GRAV_SIDS, IOR3D_MAX, LOAD_SIDS,                                             &
                                         MPCSET, MPC_SIDS, MPCSIDS, MPCADD_SIDS, PBAR, PCOMP, RPCOMP, PRESS_SIDS, RFORCE_SIDS,     &
                                         RPBAR, SLOAD_SIDS, SPC_SIDS, SPC1_SIDS, SPCADD_SIDS, SPCSET, CC_EIGR_SID, SCNUM, SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER( 3*BYTE)              :: CONSTR_TYPE = '   '! Used for output error message (='SPC' or 'MPC')
      CHARACTER( 1*BYTE)              :: FOUND       = 'N'  ! Used to indicate if we found something we are looking for

      CHARACTER( 7*BYTE), PARAMETER   :: END_CARD    = 'ENDDATA'
 
      INTEGER(LONG)                   :: NG                 ! Actual num grids on CUSERIN (not incl SPOINT's)
      INTEGER(LONG)                   :: NS                 ! Actual num SPOINT'ss on CUSERIN
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADB_BEGEND
 
      END SUBROUTINE LOADB

   END INTERFACE

   END MODULE LOADB_Interface

