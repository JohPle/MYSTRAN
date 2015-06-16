! ##################################################################################################################################

   MODULE RENORM_Interface

   INTERFACE

      SUBROUTINE RENORM ( VEC_NUM, NORM_GRD, NORM_COMP, NORM, NORM_GSET_DOF, GEN_MASS1, PHI_SCALE_FAC )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFG, NDOFG, NGRID, WARN_ERR
      USE PARAMS, ONLY                :  EPSIL, SUPWARN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  RENORM_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE COL_VECS, ONLY              :  UG_COL
  
      IMPLICIT NONE
  
      CHARACTER( 8*BYTE), INTENT(IN)  :: NORM              ! Eigenvector renormalization methof from EIGR card (e.g. 'MAX     ')
        
      INTEGER(LONG), INTENT(IN)       :: NORM_COMP         ! Comp. (1-6) for renormalizing eigenvectors (from EIGR card)
      INTEGER(LONG), INTENT(IN)       :: NORM_GRD          ! Grid Point  for renormalizing eigenvectors (from EIGR card)
      INTEGER(LONG), INTENT(IN)       :: NORM_GSET_DOF     ! G-set DOF no. for NORM_GRD/NORM_COMP 
      INTEGER(LONG), INTENT(IN)       :: VEC_NUM           ! Number used to control an output message (only want this information
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RENORM_BEGEND
  
      REAL(DOUBLE) , INTENT(INOUT)    :: GEN_MASS1         ! Generalized mass for 1 eigenvector
      REAL(DOUBLE) , INTENT(OUT)      :: PHI_SCALE_FAC     ! Scale factor for the eigenvector to renormalize it
      REAL(DOUBLE)                    :: PHI_POINT         ! Variable used when normalizing gen. mass and eigenvectors
  
      END SUBROUTINE RENORM

   END INTERFACE

   END MODULE RENORM_Interface

