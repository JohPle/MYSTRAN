! ##################################################################################################################################

   MODULE ELMTLB_Interface

   INTERFACE

      SUBROUTINE ELMTLB ( OPT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, f06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MELDOF, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMTLB_BEGEND
      USE MODEL_STUF, ONLY            :  ELDOF, ELGP, KE, ME, PTE, PPE, TE
  
      IMPLICIT NONE
 
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)

      INTEGER(LONG), PARAMETER        :: NCOLA     = 3     ! No. cols in a matrix for subr MATMULT_FFF/MATMULT_FFF_T, called herein
      INTEGER(LONG), PARAMETER        :: NROW      = 3     ! No. rows to get/put for subrs MATGET/MATPUT, called herein
      INTEGER(LONG), PARAMETER        :: NROWA     = 3     ! No. rows in a matrix for subr MATMULT_FFF/MATMULT_FFF_T, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMTLB_BEGEND
  
      END SUBROUTINE ELMTLB

   END INTERFACE

   END MODULE ELMTLB_Interface

