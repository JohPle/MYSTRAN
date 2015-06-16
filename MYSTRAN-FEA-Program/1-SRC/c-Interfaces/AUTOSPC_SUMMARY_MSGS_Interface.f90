! ##################################################################################################################################

   MODULE AUTOSPC_SUMMARY_MSGS_Interface

   INTERFACE

      SUBROUTINE AUTOSPC_SUMMARY_MSGS ( ASPC_SUM_MSG1, ASPC_SUM_MSG2, ASPC_SUM_MSG3, WRT_AUTOSPC_RAT, NUM_ASPC_BY_COMP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F06
      USE PARAMS, ONLY                :  AUTOSPC_RAT

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG1      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG2      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG3      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: WRT_AUTOSPC_RAT    ! 'Y'/'N' indicator of whether to write AUTOSPC_RAT

      INTEGER(LONG), INTENT(IN)       :: NUM_ASPC_BY_COMP(6)! The number of SPC1's for each displ component

      END SUBROUTINE AUTOSPC_SUMMARY_MSGS

   END INTERFACE

   END MODULE AUTOSPC_SUMMARY_MSGS_Interface

