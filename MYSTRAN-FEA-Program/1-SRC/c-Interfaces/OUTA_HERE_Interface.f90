! ##################################################################################################################################

   MODULE OUTA_HERE_Interface

   INTERFACE

      SUBROUTINE OUTA_HERE ( WRITE_TO_L1A ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      USE IOUNT1, ONLY                :  BUGOUT, F04, F06FIL, SC1, WRT_LOG,                                                        &
                                         BUGSTAT, BUGSTAT_OLD, ERRSTAT, ERRSTAT_OLD, F04STAT, F04STAT_OLD, L1ASTAT 

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LINKNO, WARN_ERR 
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  OUTA_HERE_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRITE_TO_L1A      ! Y/N indicator of whether to call subr WRITE_L1A

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OUTA_HERE_BEGEND

      END SUBROUTINE OUTA_HERE

   END INTERFACE

   END MODULE OUTA_HERE_Interface

