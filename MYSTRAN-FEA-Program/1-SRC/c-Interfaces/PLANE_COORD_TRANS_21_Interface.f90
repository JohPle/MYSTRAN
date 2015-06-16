! ##################################################################################################################################

   MODULE PLANE_COORD_TRANS_21_Interface

   INTERFACE

      SUBROUTINE PLANE_COORD_TRANS_21 ( THETA, T21, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE, ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  PLANE_COORD_TRANS_21_BEGEND
      
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Subr that called this one

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PLANE_COORD_TRANS_21_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: THETA             ! Angle from x axis of system 1 to x axis of system 2
      REAL(DOUBLE), INTENT(OUT)       :: T21(3,3)          ! Transformation matrix which will transform a vector, U1, in coord sys
      END SUBROUTINE PLANE_COORD_TRANS_21

   END INTERFACE

   END MODULE PLANE_COORD_TRANS_21_Interface

