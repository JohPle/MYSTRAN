! ##################################################################################################################################

   MODULE READ_CL_Interface

   INTERFACE

      SUBROUTINE READ_CL ( FILNAM, NC_FILNAM )

 
      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(OUT)   :: FILNAM            ! File name on command line
 
      INTEGER(LONG), INTENT(OUT)      :: NC_FILNAM         ! Length, in chars, of FILNAM (with leading blanks removed)
 
      END SUBROUTINE READ_CL

   END INTERFACE

   END MODULE READ_CL_Interface

