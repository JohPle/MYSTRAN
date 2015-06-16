! ##################################################################################################################################

   MODULE CLOSE_OUTFILES_Interface

   INTERFACE

      SUBROUTINE CLOSE_OUTFILES ( BUG_CLOSE_STAT, ERR_CLOSE_STAT, F04_CLOSE_STAT ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE
      USE IOUNT1, ONLY                :  WRT_LOG, BUG   ,  ERR   ,  F04   ,  F06   ,  SC1
      USE IOUNT1, ONLY                :  BUGFIL,  ERRFIL,  F04FIL,  F06FIL

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: BUG_CLOSE_STAT    ! Input value for close status for BUG
      CHARACTER(LEN=*), INTENT(IN)    :: ERR_CLOSE_STAT    ! Input value for close status for ERR
      CHARACTER(LEN=*), INTENT(IN)    :: F04_CLOSE_STAT    ! Input value for close status for F04

      END SUBROUTINE CLOSE_OUTFILES

   END INTERFACE

   END MODULE CLOSE_OUTFILES_Interface

