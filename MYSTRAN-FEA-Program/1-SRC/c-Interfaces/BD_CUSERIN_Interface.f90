! ##################################################################################################################################

   MODULE BD_CUSERIN_Interface

   INTERFACE

      SUBROUTINE BD_CUSERIN ( CARD, LARGE_FLD_INP, NG, NS )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LGUSERIN, LSUSERIN, MEDAT0_CUSERIN,       &
                                         NCUSERIN, NEDAT, NELE, WARN_ERR 
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CUSERIN_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, ETYPE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_CUSERIN'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: NG                ! Number of GRID's for the elem as defined on parent card field 5
      INTEGER(LONG), INTENT(OUT)      :: NS                ! Number of SPOINT's for the elem as defined on parent card field 5

                                                           ! Array of grids on the CUSERIN entry (not incl SPOINT's)
      INTEGER(LONG)                   :: USERIN_GRIDS(LGUSERIN)

                                                           ! Array of SPOINT's on the CUSERIN entry
      INTEGER(LONG)                   :: USERIN_SPOINTS(LSUSERIN)

                                                           ! Array of displ components on the CUSERIN entry (for USERIN_GRIDS)
      INTEGER(LONG)                   :: USERIN_COMPS(LGUSERIN)

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CUSERIN_BEGEND
 
      END SUBROUTINE BD_CUSERIN

   END INTERFACE

   END MODULE BD_CUSERIN_Interface

