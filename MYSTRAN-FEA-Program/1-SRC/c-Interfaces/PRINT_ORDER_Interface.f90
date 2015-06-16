! ##################################################################################################################################

   MODULE PRINT_ORDER_Interface

   INTERFACE

      SUBROUTINE PRINT_ORDER


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MAX_ORDER_GAUSS, MAX_ORDER_TRIA, NUM_TRIA_ORDERS, TRIA_ORDER_NUMS

      IMPLICIT NONE

      CHARACTER(18*BYTE)              :: SSC, HHC              ! Char var used in writing to internal file for formatting output
      CHARACTER(18*BYTE)              :: SSC_I, SSC_J          ! Char var used in writing to internal file for formatting output

      END SUBROUTINE PRINT_ORDER

   END INTERFACE

   END MODULE PRINT_ORDER_Interface

