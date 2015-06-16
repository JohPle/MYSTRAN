! ##################################################################################################################################

      MODULE DERIVED_DATA_TYPES

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
  
      IMPLICIT NONE

      TYPE                            :: INT2_REAL1
         INTEGER(LONG)                ::    Col_1
         INTEGER(LONG)                ::    Col_2
         REAL(DOUBLE)                 ::    Col_3
      END TYPE INT2_REAL1

      TYPE                            :: CHAR1_INT1
         CHARACTER(8*BYTE)            ::    Col_1
         INTEGER(LONG)                ::    Col_2
      END TYPE CHAR1_INT1

      END MODULE DERIVED_DATA_TYPES

