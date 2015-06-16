! ##################################################################################################################################

   MODULE GEN_T0L_Interface

   INTERFACE

      SUBROUTINE GEN_T0L (RGRID_ROW, ICORD, THETAD, PHID, T0L )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, ONE80, PI
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE PARAMS, ONLY                :  EPSIL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GEN_T0L_BEGEND
      USE MODEL_STUF, ONLY            :  RGRID, CORD, RCORD
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: RGRID_ROW         ! Row number in array RGRID where the RGRID data is stored for the grid
      INTEGER(LONG), INTENT(IN)       :: ICORD             ! Internal coord ID for coord sys L
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GEN_T0L_BEGEND
 
      REAL(DOUBLE),  INTENT(OUT)      :: THETAD,PHID       ! Azimuth and elevation angles (deg) for cylindrical/spherical coord sys 
      REAL(DOUBLE),  INTENT(OUT)      :: T0L(3,3)          ! 3 x 3 coord transformation matrix described above
      END SUBROUTINE GEN_T0L

   END INTERFACE

   END MODULE GEN_T0L_Interface

