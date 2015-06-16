! ##################################################################################################################################

   MODULE WRITE_ALLOC_MEM_TABLE_Interface

   INTERFACE

      SUBROUTINE WRITE_ALLOC_MEM_TABLE ( MESSAGE )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F06
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE ALLOCATED_ARRAY_DATA, ONLY  :  ALLOCATED_ARRAY_NAMES, ALLOCATED_ARRAY_MEM, NUM_ALLOC_ARRAYS

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MESSAGE           ! Name of subr that called this subr

      END SUBROUTINE WRITE_ALLOC_MEM_TABLE

   END INTERFACE

   END MODULE WRITE_ALLOC_MEM_TABLE_Interface

