! ##################################################################################################################################

   MODULE VECTOR_NORM_Interface

   INTERFACE

      SUBROUTINE VECTOR_NORM ( VEC, NSIZE, WHICH, VEC_NORM, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO 
      USE SUBR_BEGEND_LEVELS, ONLY    :  VECTOR_NORM_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: WHICH             ! Which norm to calculate (see below)

      INTEGER(LONG)   , INTENT(IN)    :: NSIZE             ! Extent of VEC
      INTEGER(LONG)   , INTENT(OUT)   :: IERR              ! Error indicator
      INTEGER(LONG)   , PARAMETER     :: SUBR_BEGEND = VECTOR_NORM_BEGEND
 
      REAL(DOUBLE)    , INTENT(IN)    :: VEC(NSIZE)        ! The vector for which the norm will be calculated
      REAL(DOUBLE)    , INTENT(OUT)   :: VEC_NORM          ! The norm calculated for VEC

      END SUBROUTINE VECTOR_NORM

   END INTERFACE

   END MODULE VECTOR_NORM_Interface

