! ##################################################################################################################################

   MODULE ELEM_STRE_STRN_ARRAYS_Interface

   INTERFACE

      SUBROUTINE ELEM_STRE_STRN_ARRAYS ( STR_PT_NUM )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, JTSUB, JTSUB_OLD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELEM_STRE_STRN_ARRAYS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, one, four
      USE MODEL_STUF, ONLY            :  ALPVEC, BE1, BE2, BE3, DT, EM, EB, ES, ET, ELDOF, PHI_SQ, STRAIN, STRESS, SUBLOD,         &
                                         TREF, TYPE, UEL, SE1, SE2, SE3, STE1, STE2, STE3
      USE DEBUG_PARAMETERS
      USE PARAMS, ONLY                :  STR_CID

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: STR_PT_NUM        ! Which point (3rd index in SEi matrices) this call is for
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELEM_STRE_STRN_ARRAYS_BEGEND
 
      REAL(DOUBLE)                    :: DUM31(3)          ! Array used in an intermediate calc
      REAL(DOUBLE)                    :: DUM32(3)          ! Array used in an intermediate calc
      REAL(DOUBLE)                    :: DUM33(3)          ! Array used in an intermediate calc

      END SUBROUTINE ELEM_STRE_STRN_ARRAYS

   END INTERFACE

   END MODULE ELEM_STRE_STRN_ARRAYS_Interface

