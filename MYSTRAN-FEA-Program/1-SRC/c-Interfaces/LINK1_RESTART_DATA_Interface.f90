! ##################################################################################################################################

   MODULE LINK1_RESTART_DATA_Interface

   INTERFACE

      SUBROUTINE LINK1_RESTART_DATA


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06   , FILE_NAM_MAXLEN,                                                        &
                                         L1B    , L1G    , L1K    , L1Q   , L1Y     ,                                              &
                                         LINK1B , LINK1G , LINK1K , LINK1Q, LINK1Y  ,                                              &
                                         L1B_MSG, L1G_MSG, L1K_MSG, L1Q_MSG, L1Y_MSG,                                              &
                                         L1BSTAT, L1GSTAT, L1KSTAT, L1YSTAT, WRT_LOG

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, MCORD, MRCORD, MGRID, MRGRID, NBAROFF, NCORD,                 &
                                         NCONM2, NEDAT, NELE, NGRID, NMATANGLE, NMATL, NPBAR, NPBEAM, NPDAT, NPELAS,NPROD, NPSHEL, &
                                         NPSOLID, NPUSER1, NSEQ, NSUB, NTCARD, NTDAT, NTSUB, NVVEC, MCONM2, MMATL, MPBAR, MPBEAM,  &
                                         MPELAS, MPLOAD4_3D_DATA, MPROD, MPSHEL, MPSOLID, MPUSER1, MRCONM2, MRMATLC, MRPBAR,       &
                                         MRPBEAM, MRPELAS, MRPROD, MRPSHEL, MRPUSER1, NPLATEOFF, NPLOAD4_3D, NPUSERIN

      USE SCONTR, ONLY                :  NPLATETHICK, NPBUSH, MPBUSH, MRPBUSH, NPSHEAR, MPSHEAR, MRPSHEAR, NPCOMP, MPCOMP0,        &
                                         MPCOMP_PLIES, MRPCOMP0, MRPCOMP_PLIES, MPUSERIN, MUSERIN_MAT_NAMES

      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  LINK1_RESTART_DATA_BEGEND
      USE PARAMS, ONLY                :  CBMIN3, CBMIN4, IORQ1M, IORQ1S, IORQ1B, IORQ2B, IORQ2T
      USE MODEL_STUF, ONLY            :  CORD, RCORD
      USE MODEL_STUF, ONLY            :  CONM2, RCONM2
      USE MODEL_STUF, ONLY            :  BAROFF, EDAT, EOFF, EPNT, ESORT1, ESORT2, ETYPE, PLATEOFF, VVEC
      USE MODEL_STUF, ONLY            :  GRID, RGRID, GRID_ID, GRID_SEQ, INV_GRID_SEQ
      USE MODEL_STUF, ONLY            :  MATL, RMATL, PBAR, RPBAR, PBEAM, RPBEAM, PELAS, RPELAS, PPNT, PDATA,                      &
                                         PLOAD4_3D_DATA, PTYPE, PROD, RPROD, PSHEL, PSOLID, RPSHEL, PUSER1, RPUSER1, MATANGLE
      USE MODEL_STUF, ONLY            :  GTEMP, TDATA, TPNT
      USE MODEL_STUF, ONLY            :  PLATETHICK, PBUSH, RPBUSH, PSHEAR, RPSHEAR, PCOMP, RPCOMP, PUSERIN, USERIN_MAT_NAMES

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LINK1_RESTART_DATA_BEGEND

      END SUBROUTINE LINK1_RESTART_DATA

   END INTERFACE

   END MODULE LINK1_RESTART_DATA_Interface

