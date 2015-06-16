! ##################################################################################################################################

   MODULE WRITE_EDAT_Interface

   INTERFACE

      SUBROUTINE WRITE_EDAT


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG

      USE SCONTR, ONLY                :  BLNK_SUB_NAM  , LGUSERIN      , LSUSERIN      , NELE          , NCUSERIN      , WARN_ERR, &
                                         MEDAT_CBAR    , MEDAT_CBEAM   , MEDAT_CBUSH   , MEDAT_CELAS1  , MEDAT_CELAS2  ,           &
                                         MEDAT_CELAS3  , MEDAT_CELAS4  , MEDAT_CHEXA8  , MEDAT_CHEXA20 , MEDAT_CPENTA6 ,           &
                                         MEDAT_CPENTA15, MEDAT_PLOTEL  , MEDAT_CQUAD   , MEDAT_CROD    ,                           &
                                         MEDAT_CSHEAR  , MEDAT_CTETRA4 , MEDAT_CTETRA10, MEDAT_CTRIA   ,                           &
                                         MEDAT_CUSER1  , MEDAT0_CUSERIN, METYPE
              
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  EDAT, EPNT, ETYPE
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_EDAT_BEGEND

      IMPLICIT NONE

      CHARACTER(16*BYTE)              :: EDAT_DESCR(0:MAX(2*LGUSERIN+LSUSERIN+6,25),METYPE)

      INTEGER(LONG)                   :: NG                ! Number of grids defined on a CUSERIN entry
      INTEGER(LONG)                   :: NS                ! Number of scalar points defined on a CUSERIN entry
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_EDAT_BEGEND

      END SUBROUTINE WRITE_EDAT

   END INTERFACE

   END MODULE WRITE_EDAT_Interface

