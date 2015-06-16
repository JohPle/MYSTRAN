! ##################################################################################################################################

      MODULE MYSTRAN_Version

! Data used for writing the MYSTRAN version and related data to the F06 file

      USE PENTIUM_II_KIND, ONLY      :  BYTE, LONG, DOUBLE
  
      IMPLICIT NONE

      SAVE

      CHARACTER(256*BYTE)            :: MYSTRAN_COMMENT  = '*** Please report any problems to the author at drbillc@mystran.com ***'
      CHARACTER(  8*BYTE), PARAMETER :: MYSTRAN_VER_NUM  = '6.36'
      CHARACTER(  3*BYTE), PARAMETER :: MYSTRAN_VER_MONTH= 'Jan'
      CHARACTER(  2*BYTE), PARAMETER :: MYSTRAN_VER_DAY  = '25'
      CHARACTER(  4*BYTE), PARAMETER :: MYSTRAN_VER_YEAR = '2012'
      CHARACTER( 15*BYTE), PARAMETER :: MYSTRAN_VER_AUTH = 'by Dr Bill Case'

      END MODULE MYSTRAN_Version
