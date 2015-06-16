! ##################################################################################################################################

   MODULE ELMGM1_Interface

   INTERFACE

      SUBROUTINE ELMGM1 ( INT_ELEM_ID, WRITE_WARN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MELGP, MOFFSET, NCORD, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMGM1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  BGRID, BUSH_CID, BUSH_OCID, CAN_ELEM_TYPE_OFFSET, CORD, EID, ELEM_LEN_12, ELEM_LEN_AB,    &
                                         ELGP, NUM_EMG_FATAL_ERRS, EOFF, GRID, OFFDIS, RCORD, TE, TE_IDENT, TYPE, XEB, XEL
 
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE)              :: ID(3)              ! Used in deciding whether TE_IDENT = 'Y' or 'N'
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN         ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID        ! Internal element ID for which
      INTEGER(LONG)                   :: I3_IN(3)           ! Integer array used in sorting VX. 

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMGM1_BEGEND
  
      REAL(DOUBLE)                    :: V13(3)             ! A vector from grid 1 to grid 3 (for 'BAR' or 'USER1' it is V vector)
  
      END SUBROUTINE ELMGM1

   END INTERFACE

   END MODULE ELMGM1_Interface

