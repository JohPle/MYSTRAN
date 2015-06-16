! ##################################################################################################################################

   MODULE SHP3DT_Interface

   INTERFACE

      SUBROUTINE SHP3DT ( GAUSS_PT, NUM_NODES, CALLING_SUBR, INT_ORDER, IORZZZ, SSI, SSJ, SSK, WRT_BUG_THIS_TIME, PSH,  &

                          DPSHG )

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, BUG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_SHPJ_BIT, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SHP_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO, FOUR
      USE MODEL_STUF, ONLY            :  EID, TYPE
 
      IMPLICIT NONE
  
      CHARACTER(LEN=*)  , INTENT(IN)  :: CALLING_SUBR      ! Subr that called this subr (used for debug output)
      CHARACTER(LEN=*)  , INTENT(IN)  :: INT_ORDER         ! Character name of the integration order (used for debug output)
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to
      CHARACTER(17*BYTE)              :: NAME(5)           ! Used for DEBUG output annotation

      INTEGER(LONG), INTENT(IN)       :: GAUSS_PT          ! Gauss point (needed for some optional output)
      INTEGER(LONG), INTENT(IN)       :: IORZZZ            ! Integration order (used for debug output)
      INTEGER(LONG), INTENT(IN)       :: NUM_NODES         ! Number of element nodes
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SHP_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: SSI               ! Gauss point location component 1
      REAL(DOUBLE) , INTENT(IN)       :: SSJ               ! Gauss point location component 2
      REAL(DOUBLE) , INTENT(IN)       :: SSK               ! Gauss point location component 3
      REAL(DOUBLE) , INTENT(OUT)      :: PSH(NUM_NODES)    ! Shape functions for all grid points for this Gauss point
      REAL(DOUBLE) , INTENT(OUT)      :: DPSHG(3,NUM_NODES)! Derivatives of PSH with respect to xi, eta, zi.
 
      END SUBROUTINE SHP3DT

   END INTERFACE

   END MODULE SHP3DT_Interface

