! ##################################################################################################################################

   MODULE ELSAVE_Interface

   INTERFACE

      SUBROUTINE ELSAVE

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR,     F04,     F06,     L1G
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, MMATL, MPBAR, MPBEAM, MPBUSH, MPELAS, MPROD, MPSHEL,          &
                                         MPSOLID, MPUSER1,MPUSERIN, MRMATLC, MRPBAR, MRPBEAM, MRPBUSH, MRPELAS, MRPROD, MPSHEAR,   &
                                         MRPSHEAR, MRPSHEL, MRPUSER1, NBAROFF, NEDAT, NELE, NMATANGLE, NMATL, MPCOMP0,             &
                                         MRPCOMP0, MPCOMP_PLIES, MRPCOMP_PLIES, MUSERIN_MAT_NAMES, NPBAR, NPBEAM, NPBUSH, NPCOMP,  &
                                         NPELAS, NPLATEOFF, NPLATETHICK, NPROD, NPSHEAR, NPSHEL, NPSOLID, NPUSER1, NPUSERIN, NVVEC
      USE PARAMS, ONLY                :  CBMIN3, CBMIN4, IORQ1M, IORQ1S, IORQ1B, IORQ2B, IORQ2T 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELSAVE_BEGEND
      USE MODEL_STUF, ONLY            :  BAROFF, EDAT, EOFF, EPNT, ESORT1, ESORT2, ETYPE, MATANGLE, MATL, RMATL,PBAR, RPBAR,       &
                                         PBEAM, RPBEAM, PBUSH, RPBUSH, PCOMP, RPCOMP, PELAS, RPELAS, PROD, RPROD, PSHEAR, RPSHEAR, &
                                         PSHEL, RPSHEL, PSOLID, PUSER1, RPUSER1, PUSERIN, PLATEOFF, PLATETHICK, USERIN_MAT_NAMES,  &
                                         VVEC
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELSAVE_BEGEND
 
      END SUBROUTINE ELSAVE

   END INTERFACE

   END MODULE ELSAVE_Interface

