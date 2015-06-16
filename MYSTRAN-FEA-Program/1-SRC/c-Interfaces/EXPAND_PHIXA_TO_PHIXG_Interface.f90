! ##################################################################################################################################

   MODULE EXPAND_PHIXA_TO_PHIXG_Interface

   INTERFACE

      SUBROUTINE EXPAND_PHIXA_TO_PHIXG


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ONE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L5B, SC1, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LINKNO, NDOFA, NDOFF, NDOFG, NDOFM, NDOFN, NDOFO, NDOFR, NDOFS, NTERM_PHIXA,&
                                         NTERM_PHIXG, NVEC, SOL_NAME
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE COL_VECS, ONLY              :  UA_COL, UG_COL
      USE PARAMS, ONLY                :  EPSIL, TINY
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SPARSE_MATRICES, ONLY       :  I_PHIXA, J_PHIXA, PHIXA, I_PHIXG, J_PHIXG, PHIXG  
      USE SUBR_BEGEND_LEVELS, ONLY    :  EXPAND_PHIXA_TO_PHIXG_BEGEND
      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EXPAND_PHIXA_TO_PHIXG_BEGEND

      REAL(DOUBLE)                    :: SMALL             ! A number used in filtering out small numbers from a full matrix

      END SUBROUTINE EXPAND_PHIXA_TO_PHIXG

   END INTERFACE

   END MODULE EXPAND_PHIXA_TO_PHIXG_Interface

