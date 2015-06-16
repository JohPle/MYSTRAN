! ##################################################################################################################################
 
      SUBROUTINE PROJ_VEC_ONTO_PLANE ( VEC_A, VEC_B, VEC_C )
 
! Calcs the projection of a vector onto a plane given a normal to the plane (VEC_B) and the vector to be procected (VEC_A).
! Result is VEC_C 

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  PROJ_VEC_ONTO_PLANE_BEGEND
 
      USE PROJ_VEC_ONTO_PLANE_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'PROJ_VEC_ONTO_PLANE'

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PROJ_VEC_ONTO_PLANE_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: VEC_A(3)           ! Vector to be projected
      REAL(DOUBLE) , INTENT(IN)       :: VEC_B(3)           ! Vector normal to the plane onto which VEC_A is to be projected
      REAL(DOUBLE) , INTENT(OUT)      :: VEC_C(3)           ! Vector projection of VEC_A onto plane to which VEC_B is normal
      REAL(DOUBLE)                    :: VEC_DUM(3)         ! Dummy vector in the calc of VEC_C

! *********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      CALL CROSS ( VEC_A, VEC_B, VEC_DUM )
      CALL CROSS ( VEC_B, VEC_DUM, VEC_C )


! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************

! **********************************************************************************************************************************

      END SUBROUTINE PROJ_VEC_ONTO_PLANE
