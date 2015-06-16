! ##################################################################################################################################

   MODULE OUTPUT4_MATRIX_MSGS_Interface

   INTERFACE

      SUBROUTINE OUTPUT4_MATRIX_MSGS ( OUNT )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F06, LEN_INPUT_FNAME, MOU4, OU4, OU4FIL, OU4_MSG, OU4STAT
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, ACT_OU4_MYSTRAN_NAMES, ACT_OU4_OUTPUT_NAMES,                       &
                                         ALLOW_OU4_MYSTRAN_NAMES, ALLOW_OU4_OUTPUT_NAMES, NUM_OU4_REQUESTS, NUM_OU4_VALID_NAMES,   &
                                         OU4_FILE_UNITS
      USE PARAMS, ONLY                :  SUPINFO

      IMPLICIT NONE

      CHARACTER(1*BYTE)               :: CDUM                        ! Var returned from called subr not used
                                                             
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)             ! File units to write messages to. Input to subr UNFORMATTED_OPEN.
      INTEGER(LONG)                   :: IDUM                        ! Var returned from called subr not used

      END SUBROUTINE OUTPUT4_MATRIX_MSGS

   END INTERFACE

   END MODULE OUTPUT4_MATRIX_MSGS_Interface

