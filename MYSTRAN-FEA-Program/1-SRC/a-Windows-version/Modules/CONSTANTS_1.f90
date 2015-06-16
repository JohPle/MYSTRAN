! ##################################################################################################################################

      MODULE CONSTANTS_1

      USE PENTIUM_II_KIND, ONLY       :  DOUBLE, QUAD

      IMPLICIT NONE

      SAVE

! Real constants used in various subroutines

      REAL(DOUBLE),  PARAMETER        :: ZERO              =    0.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPM16           =    1.0E-16_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPM15           =    1.0E-15_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPM14           =    1.0E-14_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPM6            =    1.0E-06_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPM5            =    1.0E-05_QUAD 
      REAL(DOUBLE),  PARAMETER        :: ONEPM4            =    1.0E-04_QUAD 
      REAL(DOUBLE),  PARAMETER        :: ONE               =    1.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: TWO               =    2.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: THREE             =    3.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: THREEP6           =    3.6_QUAD
      REAL(DOUBLE),  PARAMETER        :: FOUR              =    4.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: FIVE              =    5.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: SIX               =    6.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: SEVEN             =    7.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: EIGHT             =    8.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: NINE              =    9.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: TEN               =   10.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ELEVEN            =   11.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: TWELVE            =   12.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: FORTY5            =   45.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONE_HUNDRED        =  100.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONE_THOUSAND      = 1000.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONE80             =  180.0_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPP6            =    1.0E+06_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPP7            =    1.0E+07_QUAD
      REAL(DOUBLE),  PARAMETER        :: ONEPP10           =    1.0E+10_QUAD
      REAL(DOUBLE),  PARAMETER        :: PI                =  3.1415926535897932384626433832795_QUAD

      REAL(DOUBLE),  PARAMETER        :: TENTH             =  ONE/TEN
      REAL(DOUBLE),  PARAMETER        :: SIXTH             =  ONE/SIX
      REAL(DOUBLE),  PARAMETER        :: QUARTER           =  ONE/FOUR
      REAL(DOUBLE),  PARAMETER        :: THIRD             =  ONE/THREE
      REAL(DOUBLE),  PARAMETER        :: HALF              =  ONE/TWO
      REAL(DOUBLE),  PARAMETER        :: CONV_DEG_RAD      =  PI/ONE80
      REAL(DOUBLE),  PARAMETER        :: CONV_RAD_DEG      =  ONE80/PI

      END MODULE CONSTANTS_1 
