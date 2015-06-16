! ##################################################################################################################################

   MODULE OPEN_OUTFILES_Interface

   INTERFACE

      SUBROUTINE OPEN_OUTFILES


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG    , ERR    , F04    , F06    , SC1, BUGOUT, FILE_NAM_MAXLEN,                         &
                                         BUGFIL , ERRFIL , F04FIL , F06FIL ,                                                       &
                                         BUG_MSG, ERR_MSG, F04_MSG, F06_MSG
      USE TIMDAT, ONLY                :  STIME, TSEC

      IMPLICIT NONE

      END SUBROUTINE OPEN_OUTFILES

   END INTERFACE

   END MODULE OPEN_OUTFILES_Interface

