! ##################################################################################################################################

   MODULE SET_FILE_CLOSE_STAT_Interface

   INTERFACE

      SUBROUTINE SET_FILE_CLOSE_STAT ( CLOSE_STAT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
 
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERRSTAT, F04STAT, SEQSTAT, SPCSTAT, L1ASTAT,                   &
                                         L1BSTAT, L1CSTAT, L1DSTAT, L1ESTAT, L1FSTAT, L1GSTAT, L1HSTAT, L1ISTAT, L1TSTAT, L1JSTAT, &
                                         L1KSTAT, L1LSTAT, L1MSTAT, L1NSTAT, L1OSTAT, L1PSTAT, L1QSTAT, L1RSTAT, L1SSTAT, L1USTAT, &
                                         L1VSTAT, L1WSTAT, L1XSTAT, L1YSTAT, L1ZSTAT,                                              &
                                         L2ASTAT, L2BSTAT, L2CSTAT, L2DSTAT, L2ESTAT, L2FSTAT, L2GSTAT, L2HSTAT, L2ISTAT, L2JSTAT, &
                                         L2KSTAT, L2LSTAT, L2MSTAT, L2NSTAT, L2OSTAT, L2PSTAT, L2QSTAT, L2RSTAT, L2SSTAT, L2TSTAT, &
                                         L3ASTAT, L4ASTAT, L4BSTAT, L4CSTAT, L4DSTAT, L5ASTAT, L5BSTAT
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CLOSE_STAT        ! Close status of files

      END SUBROUTINE SET_FILE_CLOSE_STAT

   END INTERFACE

   END MODULE SET_FILE_CLOSE_STAT_Interface

