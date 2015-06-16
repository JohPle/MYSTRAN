! ##################################################################################################################################

   MODULE PRINT_CONSTANTS_1_Interface

   INTERFACE

      SUBROUTINE PRINT_CONSTANTS_1


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  PROG_NAME

      IMPLICIT NONE
  
      END SUBROUTINE PRINT_CONSTANTS_1

   END INTERFACE

   END MODULE PRINT_CONSTANTS_1_Interface

