! ##################################################################################################################################

   MODULE STR_TENSOR_TRANSFORM_Interface

   INTERFACE

      SUBROUTINE STR_TENSOR_TRANSFORM ( STRESS_TENSOR, STRESS_CORD_SYS )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NCORD
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  CORD, RCORD, TE
      USE SUBR_BEGEND_LEVELS, ONLY    :  STR_TENSOR_TRANSFORM_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: STRESS_CORD_SYS   ! Actual coord system ID for stress/strain/engr force output
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = STR_TENSOR_TRANSFORM_BEGEND

      REAL(DOUBLE), INTENT(INOUT)     :: STRESS_TENSOR(3,3)! 2D stress tensor (eqn 4 above)
      REAL(DOUBLE)                    :: DUM33(3,3)        ! Intermediate array used in calc outputs

      END SUBROUTINE STR_TENSOR_TRANSFORM

   END INTERFACE

   END MODULE STR_TENSOR_TRANSFORM_Interface

