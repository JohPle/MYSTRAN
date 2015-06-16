! ##################################################################################################################################

      MODULE TIMDAT
  
! Time & Date
  
      USE PENTIUM_II_KIND, ONLY       :  LONG, SINGLE

      IMPLICIT NONE
 
      SAVE

      INTEGER(LONG)                   :: HOUR              ! The hour     when subr OURTIM returns.
      INTEGER(LONG)                   :: MINUTE            ! The minute   when subr OURTIM returns.
      INTEGER(LONG)                   :: SEC               ! The second   when subr OURTIM returns.
      INTEGER(LONG)                   :: SFRAC             ! The sec frac when subr OURTIM returns.
      INTEGER(LONG)                   :: YEAR              ! The year     when subr OURDAT returns.
      INTEGER(LONG)                   :: MONTH             ! The month    when subr OURDAT returns.
      INTEGER(LONG)                   :: DAY               ! The day      when subr OURDAT returns.
      INTEGER(LONG)                   :: START_HOUR        ! The hour     when MYSTRAN starts.
      INTEGER(LONG)                   :: START_MINUTE      ! The minute   when MYSTRAN starts.
      INTEGER(LONG)                   :: START_SEC         ! The second   when MYSTRAN starts.
      INTEGER(LONG)                   :: START_SFRAC       ! The sec frac when MYSTRAN starts.
      INTEGER(LONG)                   :: START_YEAR        ! The year     when MYSTRAN starts.
      INTEGER(LONG)                   :: START_MONTH       ! The month    when MYSTRAN starts.
      INTEGER(LONG)                   :: START_DAY         ! The day      when MYSTRAN starts.
      INTEGER(LONG)                   :: STIME             ! A number calc'd in LINK1 as a distinct time stamp to put into all
!                                                            output files: STIME = 10^8*MONTH+10^6*DAY+10^4*HOUR+10^2*MINUTE+SEC
  
      REAL(SINGLE)                    :: TSEC              ! Total secs elapsed since beginning of a run 
      REAL(SINGLE)                    :: DSEC              ! Delta secs elapsed since last OURTIM use
  
      END MODULE TIMDAT
