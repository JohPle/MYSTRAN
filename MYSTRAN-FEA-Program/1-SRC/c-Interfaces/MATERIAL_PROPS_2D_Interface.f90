! ##################################################################################################################################

   MODULE MATERIAL_PROPS_2D_Interface

   INTERFACE

      SUBROUTINE MATERIAL_PROPS_2D ( WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MEFE, MEMATC 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATERIAL_PROPS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  ALPVEC, EID, EMG_IFE, EMG_RFE, ERR_SUB_NAM, EB, EBM, EM, ET, NUM_EMG_FATAL_ERRS, EMAT,    &
                                         MTRL_TYPE, QUAD_DELTA, RHO, ULT_STRE, ULT_STRN, THETAM, TREF, TYPE
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATERIAL_PROPS_BEGEND
  
      END SUBROUTINE MATERIAL_PROPS_2D

   END INTERFACE

   END MODULE MATERIAL_PROPS_2D_Interface

