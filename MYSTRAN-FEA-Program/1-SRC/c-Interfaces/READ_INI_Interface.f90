! ##################################################################################################################################

   MODULE READ_INI_Interface

   INTERFACE

      SUBROUTINE READ_INI ( INI_EXIST )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, DEFDIR, DEF_INFILE_EXT, INIFIL, SC1, MOU4, WRT_ERR, WRT_LOG

      USE IOUNT1, ONLY                :  ANS,     BUG,     ERR,     F04,     F06,     IN0,     IN1,     INI,     L1A,     NEU,     &
                                         SEQ,     SPC,                                                                             &
                                         F21,     F22,     F23,     F24,     F25,                                                  &
                                         L1B,     L1C,     L1D,     L1E,     L1F,     L1G,     L1H,     L1I,     L1J,     L1K,     &
                                         L1L,     L1M,     L1N,     L1O,     L1P,     L1Q,     L1R,     L1S,     L1T,     L1U,     &
                                         L1V,     L1W,     L1X,     L1Y,     L1Z,                                                  &
                                         L2A,     L2B,     L2C,     L2D,     L2E,     L2F,     L2G,     L2H,     L2I,     L2J,     &
                                         L2K,     L2L,     L2M,     L2N,     L2O,     L2P,     L2Q,     L2R,     L2S,     L2T,     &
                                         L3A,     L4A,     L4B,     L4C,     L4D,     L5A,     L5B,     OU4

      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANSSTAT, BUGSTAT, ERRSTAT, F04STAT, F06STAT, IN0STAT, IN1STAT, &
                                         L1ASTAT, NEUSTAT, SEQSTAT, SPCSTAT,                                                       &
                                         F21STAT, F22STAT, F23STAT, F24STAT, F25STAT,                                              &
                                         L1BSTAT, L1CSTAT, L1DSTAT, L1ESTAT, L1FSTAT, L1GSTAT, L1HSTAT, L1ISTAT, L1JSTAT, L1KSTAT, &
                                         L1LSTAT, L1MSTAT, L1NSTAT, L1OSTAT, L1PSTAT, L1QSTAT, L1RSTAT, L1SSTAT, L1TSTAT, L1USTAT, &
                                         L1VSTAT, L1WSTAT, L1XSTAT, L1YSTAT, L1ZSTAT,                                              &
                                         L2ASTAT, L2BSTAT, L2CSTAT, L2DSTAT, L2ESTAT, L2FSTAT, L2GSTAT, L2HSTAT, L2ISTAT, L2JSTAT, &
                                         L2KSTAT, L2LSTAT, L2MSTAT, L2NSTAT, L2OSTAT, L2PSTAT, L2QSTAT, L2RSTAT, L2SSTAT, L2TSTAT, &
                                         L3ASTAT, L4ASTAT, L4BSTAT, L4CSTAT, L4DSTAT, L5ASTAT, L5BSTAT

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, IERRFL, INI_ENTRY_LEN, JF, LINKNO_START, PRINTENV,                    &
                                         PROG_NAME, PROTECTED, USERS_UNLOCK_KEY

      IMPLICIT NONE

      CHARACTER( 1*BYTE), INTENT(OUT) :: INI_EXIST         ! 'Y' if file MYSTRAN.INI exists or 'N' otherwise
      CHARACTER( 8*BYTE)              :: ALL_CLOSE_STAT    ! Status to use when closing MYSTRAN files when no longer needed.
      CHARACTER( 8*BYTE)              :: DUMSTAT           ! Dummy status used for file SC1 (screen) that cannot have a close status
      CHARACTER(LEN=LEN(ECHO))        :: PERM_ECHO         ! Set equal to ECHO, initially, so we can use ECHO = NONE for this subr
      CHARACTER( 1*BYTE)              :: RESPONSE          ! 'Y'/'N' response from user

      INTEGER(LONG)                   :: IBEGIN            ! Counter used to find where DEFDIR begins on CARD

      END SUBROUTINE READ_INI

   END INTERFACE

   END MODULE READ_INI_Interface

