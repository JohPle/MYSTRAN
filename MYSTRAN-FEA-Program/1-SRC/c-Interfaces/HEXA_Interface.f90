! ##################################################################################################################################

   MODULE HEXA_Interface

   INTERFACE

      SUBROUTINE HEXA ( OPT, INT_ELEM_ID,IORD, RED_INT_SHEAR, WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_GAUSS, MELDOF, MPLOAD4_3D_DATA, NPLOAD4_3D, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  QUARTER, ZERO, ONE, EIGHT
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  HEXA_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  AGRID, ALPVEC, BE1, BE2, DT, EID, ELGP, NUM_EMG_FATAL_ERRS, ES, KE, ME,                   &
                                         NUM_EMG_FATAL_ERRS, PLOAD4_3D_DATA, PPE, PRESS, PTE, RHO, SE1, SE2, STE1, TREF, TYPE, XEL
 
      IMPLICIT NONE 
  
      CHARACTER( 1*BYTE), INTENT(IN)  :: RED_INT_SHEAR          ! If 'Y', use Gaussian weighted avg of B matrices for shear terms
      CHARACTER( 1*BYTE), INTENT(IN)  :: OPT(6)                 ! 'Y'/'N' flags for whether to calc certain elem matrices
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN             ! If 'Y" write warning messages, otherwise do not

      CHARACTER(30*BYTE)              :: IORD_MSG               ! Character name of an integration order (used for debug output)

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID             ! Internal element ID
      INTEGER(LONG), INTENT(IN)       :: IORD                   ! Gaussian integration order for element
      INTEGER(LONG)                   :: GAUSS_PT               ! Gauss point number (used for DEBUG output in subr SHP3DH
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = HEXA_BEGEND
  
      REAL(DOUBLE)                    :: DUM0(3*ELGP)           ! Intermediate matrix used in solving for elem matrices
      REAL(DOUBLE)                    :: DUM1(3*ELGP)           ! Intermediate matrix used in solving for elem matrices
      REAL(DOUBLE)                    :: DUM2(6,3*ELGP)         ! Intermediate matrix used in solving for elem matrices
      REAL(DOUBLE)                    :: DUM3(3*ELGP,3*ELGP)    ! Intermediate matrix used in solving for elem matrices
      REAL(DOUBLE)                    :: DUM4(6,3*ELGP)         ! Intermediate matrix used in solving for elem matrices
      REAL(DOUBLE)                    :: DUM5(3*ELGP,3*ELGP)    ! Intermediate matrix used in solving for KE elem matrices
      REAL(DOUBLE)                    :: EALP(6)                ! Variable used in calc PTE therm loads & STEi therm stress coeffs

      REAL(DOUBLE)                    :: M0                     ! An intermediate variable used in calc elem mass, ME
      REAL(DOUBLE)                    :: SUMB                   ! An intermediate variable used in calc B matrix for reduced integ
      REAL(DOUBLE)                    :: SUMD                   ! An intermediate variable used in calc B matrix for reduced integ
      REAL(DOUBLE)                    :: TEMP                   ! Temperature to use in PTE calc
 
      END SUBROUTINE HEXA

   END INTERFACE

   END MODULE HEXA_Interface

