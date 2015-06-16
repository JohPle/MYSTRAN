! ##################################################################################################################################

   MODULE ROT_COMP_ELEM_AXES_Interface

   INTERFACE

      SUBROUTINE ROT_COMP_ELEM_AXES ( IPLY, THETA, DIRECTION )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEMATC 
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  CONV_DEG_RAD, ZERO, HALF, ONE, TWO, FOUR
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MODEL_STUF, ONLY            :  ALPVEC, EB, EM, ET, EBM, INTL_MID, MTRL_TYPE, STRESS, STRAIN, T1P, T1M, T1T, T2P, T2M, T2T

      USE SUBR_BEGEND_LEVELS, ONLY    :  ROT_COMP_ELEM_AXES_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: DIRECTION         ! =1-2, rotate from ply to elem mat'l axes (when gen ABD matrices)
      INTEGER(LONG), INTENT(IN)       :: IPLY              ! Ply number
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ROT_COMP_ELEM_AXES_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: THETA             ! Orient angle of long dir of ply i wrt matl axis for the composite elem
 
      END SUBROUTINE ROT_COMP_ELEM_AXES

   END INTERFACE

   END MODULE ROT_COMP_ELEM_AXES_Interface

