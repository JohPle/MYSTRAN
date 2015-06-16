! ##################################################################################################################################

   MODULE GET_VEC_MIN_MAX_ABS_Interface

   INTERFACE

      SUBROUTINE GET_VEC_MIN_MAX_ABS ( NROWS, ID_LIST, VECTOR, VEC_MIN, VEC_MAX, VEC_ABS, ID_MIN, ID_MAX )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_VEC_MIN_MAX_ABS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM
  
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in ID_LIST and VECTOR
      INTEGER(LONG), INTENT(IN)       :: ID_LIST(NROWS)    ! The ID (grid or elem) numbers corresponding to rows in VECTOR
      INTEGER(LONG), INTENT(OUT)      :: ID_MAX            ! ID where vector is max
      INTEGER(LONG), INTENT(OUT)      :: ID_MIN            ! ID where vector is min
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_VEC_MIN_MAX_ABS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: VECTOR(NROWS)     ! Values to scan for MIN, MAX, ABS
      REAL(DOUBLE) , INTENT(OUT)      :: VEC_ABS           ! Abs value in vector
      REAL(DOUBLE) , INTENT(OUT)      :: VEC_MAX           ! Max value in vector
      REAL(DOUBLE) , INTENT(OUT)      :: VEC_MIN           ! Min value in vector

      END SUBROUTINE GET_VEC_MIN_MAX_ABS

   END INTERFACE

   END MODULE GET_VEC_MIN_MAX_ABS_Interface

