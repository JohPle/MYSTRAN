! ##################################################################################################################################

   MODULE ALLOCATED_MEMORY_Interface

   INTERFACE

      SUBROUTINE ALLOCATED_MEMORY ( ARRAY_NAME, MB_ALLOCATED, WHAT, WRITE_TABLE, CURRENT_MB_ALLOCATED, CALLING_SUBR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F06
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  SUPINFO
      USE ALLOCATED_ARRAY_DATA, ONLY  :  ALLOCATED_ARRAY_NAMES, ALLOCATED_ARRAY_MEM, NUM_ALLOC_ARRAYS

      IMPLICIT NONE

      CHARACTER(LEN=*),INTENT(IN)     :: ARRAY_NAME           ! Name of allocatable array
      CHARACTER(LEN=*),INTENT(IN)     :: CALLING_SUBR         ! Name of subr that called this one
      CHARACTER(LEN=*),INTENT(IN)     :: WHAT                 ! 'ALLOC or 'DEALLOC'. Used for output message purpose
      CHARACTER(LEN=*),INTENT(IN)     :: WRITE_TABLE          ! If 'Y' and DEBUG says to, write out the memory table

      REAL(DOUBLE)    ,INTENT(OUT)    :: CURRENT_MB_ALLOCATED ! MB of memory that is allocated to ARRAY_NAME when this subr starts
      REAL(DOUBLE)    ,INTENT(IN)     :: MB_ALLOCATED       ! MB of memory to enter into array ALLOCATED_ARRAY_MEM for ARRAY_NAME
      END SUBROUTINE ALLOCATED_MEMORY

   END INTERFACE

   END MODULE ALLOCATED_MEMORY_Interface

