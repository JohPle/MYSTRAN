! ##################################################################################################################################

   MODULE JAC3D_Interface

   INTERFACE

      SUBROUTINE JAC3D ( DPSHG, WRT_BUG_THIS_TIME, JAC, JACI, DETJ )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, BUG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  JACOBIAN_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  EID, ELGP, NUM_EMG_FATAL_ERRS, TYPE, XEL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
  
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = JACOBIAN_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: DPSHG(3,ELGP)     ! 3 x ELGP array of derivatives of element shape functions evaluated at
      REAL(DOUBLE) , INTENT(OUT)      :: DETJ              ! Determinant of JAC
      REAL(DOUBLE) , INTENT(OUT)      :: JAC(3,3)          ! 2 x 2 Jacobian matrix
      REAL(DOUBLE) , INTENT(OUT)      :: JACI(3,3)         ! 2 x 2 inverse of JAC
      REAL(DOUBLE)                    :: B(3,3)            ! Array used in calculating inverse of JAC
      REAL(DOUBLE)                    :: XL(ELGP,3)        ! Array of local element coords for the element (note: cannot use XEL
      END SUBROUTINE JAC3D

   END INTERFACE

   END MODULE JAC3D_Interface

