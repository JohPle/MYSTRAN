! ##################################################################################################################################

   MODULE BD_PSOLID_Interface

   INTERFACE

      SUBROUTINE BD_PSOLID ( CARD, IOR3D )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPSOLID, NPSOLID, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PSOLID_BEGEND
      USE MODEL_STUF, ONLY            :  PSOLID

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), INTENT(OUT)      :: IOR3D             ! Integration order for this PSOLID entry
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PSOLID_BEGEND
 
      END SUBROUTINE BD_PSOLID

   END INTERFACE

   END MODULE BD_PSOLID_Interface

