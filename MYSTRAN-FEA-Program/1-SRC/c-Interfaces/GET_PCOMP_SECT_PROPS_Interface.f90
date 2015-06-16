! ##################################################################################################################################

   MODULE GET_PCOMP_SECT_PROPS_Interface

   INTERFACE

      SUBROUTINE GET_PCOMP_SECT_PROPS ( PCOMP_TM, PCOMP_IB, PCOMP_TS )

 
      USE PENTIUM_II_KIND, ONLY       :  LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MPCOMP_PLIES, MPCOMP0, MRPCOMP_PLIES, MRPCOMP0
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE MODEL_STUF, ONLY            :  EPROP, INTL_PID, NUM_PLIES, RPCOMP, TPLY
      USE PARAMS, ONLY                :  PCMPTSTM 
      USE CONSTANTS_1, ONLY           :  ZERO, THIRD
      USE TIMDAT, ONLY                :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_PCOMP_SECT_PROPS_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_PCOMP_SECT_PROPS_BEGEND

      REAL(DOUBLE), INTENT(OUT)       :: PCOMP_TM           ! Membrane thickness of PCOMP for equivalent PSHELL
      REAL(DOUBLE), INTENT(OUT)       :: PCOMP_IB           ! Bending MOI of PCOMP for equivalent PSHELL
      REAL(DOUBLE), INTENT(OUT)       :: PCOMP_TS           ! Transverse shear thickness of PCOMP for equivalent PSHELL
 
      END SUBROUTINE GET_PCOMP_SECT_PROPS

   END INTERFACE

   END MODULE GET_PCOMP_SECT_PROPS_Interface

