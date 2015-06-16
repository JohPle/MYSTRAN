! ##################################################################################################################################

   MODULE WRITE_VECTOR_Interface

   INTERFACE

      SUBROUTINE WRITE_VECTOR ( VEC_NAME, WHAT, NUM, UX )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_VECTOR_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: VEC_NAME          ! Name of vector being output
      CHARACTER(LEN=*), INTENT(IN)    :: WHAT              ! Title over output vector (e.g. DISPL, FORCE, etc.)

      INTEGER(LONG), INTENT(IN)       :: NUM               ! Size of vector UX to write out
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_VECTOR_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: UX(NUM)           ! Vector to write out
 
      END SUBROUTINE WRITE_VECTOR

   END INTERFACE

   END MODULE WRITE_VECTOR_Interface

