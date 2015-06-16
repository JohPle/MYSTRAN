! ##################################################################################################################################

   MODULE MATERIAL_PROPS_3D_Interface

   INTERFACE

      SUBROUTINE MATERIAL_PROPS_3D ( WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATERIAL_PROPS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  ALPVEC, EID, ES, EMAT, NUM_EMG_FATAL_ERRS, MTRL_TYPE, RHO, ULT_STRE, ULT_STRN, TREF, TYPE
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATERIAL_PROPS_BEGEND
  
      END SUBROUTINE MATERIAL_PROPS_3D

   END INTERFACE

   END MODULE MATERIAL_PROPS_3D_Interface

