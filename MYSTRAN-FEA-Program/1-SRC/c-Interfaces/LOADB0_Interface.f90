! ##################################################################################################################################

   MODULE LOADB0_Interface

   INTERFACE

      SUBROUTINE LOADB0

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, IN1                
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, FATAL_ERR, LCMASS, LDOFG, LELE,                               &
                                         LEDAT, LFORCE, LCONM2, LCORD, LGRAV, LGRID, LGUSERIN, LLOADC, LLOADR,                     &
                                         LMATL, LMPC, LMPCADDC, LMPCADDR, LPBAR, LPBEAM, LPBUSH, LPCOMP, LPCOMP_PLIES, LPDAT,      &
                                         LPELAS, LPLOAD, LPMASS, LPROD, LPSHEL, LPSHEAR, LPSOLID, LPUSER1, LPUSERIN, LRFORCE,      &
                                         LRIGEL, LSEQ, LSLOAD, LSPC, LSPC1, LSPCADDC, LSPCADDR, LSUSERIN, LTDAT,                   &
                                         MEDAT_CBAR, MEDAT_CBEAM, MEDAT_CBUSH,                                                     &
                                         MEDAT_CELAS1, MEDAT_CELAS2, MEDAT_CELAS3, MEDAT_CELAS4,                                   &
                                         MEDAT_CQUAD, MEDAT_CROD, MEDAT_CSHEAR, MEDAT_CTRIA, MEDAT_CUSER1, MEDAT0_CUSERIN, MMPC,   &
                                         MPDAT_PLOAD2, MPDAT_PLOAD4, MEDAT_PLOTEL, MRBE3, MRSPLINE, MTDAT_TEMPRB, MTDAT_TEMPP1,    &
                                         NPBARL, NSPOINT, PROG_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADB0_BEGEND
      USE MODEL_STUF, ONLY            :  GRDSET3, GRDSET7, GRDSET8
      USE PARAMS, ONLY                :  GRIDSEQ
 
      IMPLICIT NONE
 
      CHARACTER( 7*BYTE), PARAMETER   :: END_CARD    = 'ENDDATA'

      INTEGER(LONG)                   :: NG_USERIN         ! Number of grids found on USERIN elems (not incl SPOINT's)
      INTEGER(LONG)                   :: NS_USERIN         ! Number of SPOINT's found on USERIN elems
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADB0_BEGEND
 
      END SUBROUTINE LOADB0

   END INTERFACE

   END MODULE LOADB0_Interface

