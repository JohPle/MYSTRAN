! ##################################################################################################################################

   MODULE DATA_SET_NAME_ERROR_Interface

   INTERFACE

      SUBROUTINE DATA_SET_NAME_ERROR ( DATA_NAME_ShouldBe, FILNAM, DATA_NAME_Is )


      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F06
      USE SCONTR, ONLY                :  FATAL_ERR

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: DATA_NAME_Is      ! Data set name actual
      CHARACTER(LEN=*), INTENT(IN)    :: DATA_NAME_ShouldBe! Data set name that should be
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! name of file data set was read from

      END SUBROUTINE DATA_SET_NAME_ERROR

   END INTERFACE

   END MODULE DATA_SET_NAME_ERROR_Interface

