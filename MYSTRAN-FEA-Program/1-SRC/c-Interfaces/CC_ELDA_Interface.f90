! ##################################################################################################################################

   MODULE CC_ELDA_Interface

   INTERFACE

      SUBROUTINE CC_ELDA ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ELDA_BEGEND
      USE MODEL_STUF, ONLY            :  CCELDT
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: IOUTBAD     = 0   ! PUNCH output not allowed for this value of IOUT
      INTEGER(LONG), PARAMETER        :: IOUTMIN_BUG = 0   ! Min value of IOUT (=1,2,3,4,5,6,7,8 are the ELDATA out options)
      INTEGER(LONG), PARAMETER        :: IOUTMAX_BUG = 8   ! Max value of IOUT (=1,2,3,4,5,6,7,8 are the ELDATA out options)
      INTEGER(LONG), PARAMETER        :: IOUTMIN_FIJ = 1   ! Min value of IOUT (=1,2,3,4,5,6,7,8 are the ELDATA out options)
      INTEGER(LONG), PARAMETER        :: IOUTMAX_FIJ = 5   ! Max value of IOUT (=1,2,3,4,5,6,7,8 are the ELDATA out options)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ELDA_BEGEND
 
      END SUBROUTINE CC_ELDA

   END INTERFACE

   END MODULE CC_ELDA_Interface

