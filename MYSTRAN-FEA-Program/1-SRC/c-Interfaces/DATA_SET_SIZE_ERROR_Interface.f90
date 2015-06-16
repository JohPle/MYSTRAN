! ##################################################################################################################################

   MODULE DATA_SET_SIZE_ERROR_Interface

   INTERFACE

      SUBROUTINE DATA_SET_SIZE_ERROR ( FILNAM, DATA_SET_NAME, DATA_NAME, INT1, INT2 )


      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F06, LINK1A
      USE SCONTR, ONLY                :  FATAL_ERR

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: DATA_SET_NAME     ! Name of data set read from FILNAM
      CHARACTER(LEN=*), INTENT(IN)    :: DATA_NAME         ! Name of data variable that should have been read
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! Nmae of file data was read from

      INTEGER(LONG)   , INTENT(IN)    :: INT1              ! Size of data variable that should have been read
      INTEGER(LONG)   , INTENT(IN)    :: INT2              ! Size of data variable read

      END SUBROUTINE DATA_SET_SIZE_ERROR

   END INTERFACE

   END MODULE DATA_SET_SIZE_ERROR_Interface

