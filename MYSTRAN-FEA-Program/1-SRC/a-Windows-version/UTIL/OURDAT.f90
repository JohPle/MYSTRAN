! ##################################################################################################################################
 
      SUBROUTINE OURDAT
 
! Returns date info using Fortran DATE_AND_TIME intrinsic procedure
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY
 
      USE OURDAT_USE_IFs

      IMPLICIT NONE
 
      CHARACTER( 8*BYTE)              :: DATE              ! Date returned from intrinsic function DATE_AND_TIME
      CHARACTER(10*BYTE)              :: TIME              ! Time returned from intrinsic function DATE_AND_TIME
      CHARACTER( 5*BYTE)              :: ZONE              ! Zone returned from intrinsic function DATE_AND_TIME
 
      INTEGER(LONG)                   :: VALUES(8)         ! Contains year, month, day from intrinsic function DATE_AND_TIME
 
      INTRINSIC                       :: DATE_AND_TIME
 
! **********************************************************************************************************************************
      CALL DATE_AND_TIME(DATE,TIME,ZONE,VALUES)

      YEAR  = VALUES(1)
      MONTH = VALUES(2)
      DAY   = VALUES(3)
 
      RETURN
 
      END SUBROUTINE OURDAT
