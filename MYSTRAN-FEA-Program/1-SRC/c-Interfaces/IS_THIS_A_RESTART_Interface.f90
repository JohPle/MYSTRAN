! ##################################################################################################################################

   MODULE IS_THIS_A_RESTART_Interface

   INTERFACE

      SUBROUTINE IS_THIS_A_RESTART

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  IN1
      USE SCONTR, ONLY                :  EC_ENTRY_LEN, FATAL_ERR, RESTART
      USE TIMDAT, ONLY                :  TSEC
 
      IMPLICIT NONE

      CHARACTER( 4*BYTE), PARAMETER   :: END_CARD  = 'CEND'
 
      END SUBROUTINE IS_THIS_A_RESTART

   END INTERFACE

   END MODULE IS_THIS_A_RESTART_Interface

