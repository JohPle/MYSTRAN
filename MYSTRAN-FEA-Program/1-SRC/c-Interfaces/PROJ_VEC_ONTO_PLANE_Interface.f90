! ##################################################################################################################################

   MODULE PROJ_VEC_ONTO_PLANE_Interface

   INTERFACE

      SUBROUTINE PROJ_VEC_ONTO_PLANE ( VEC_A, VEC_B, VEC_C )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  PROJ_VEC_ONTO_PLANE_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PROJ_VEC_ONTO_PLANE_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: VEC_A(3)           ! Vector to be projected
      REAL(DOUBLE) , INTENT(IN)       :: VEC_B(3)           ! Vector normal to the plane onto which VEC_A is to be projected
      REAL(DOUBLE) , INTENT(OUT)      :: VEC_C(3)           ! Vector projection of VEC_A onto plane to which VEC_B is normal

      END SUBROUTINE PROJ_VEC_ONTO_PLANE

   END INTERFACE

   END MODULE PROJ_VEC_ONTO_PLANE_Interface

