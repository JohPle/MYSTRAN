! ##################################################################################################################################

   MODULE BANDIT_FILES_Interface

   INTERFACE

      SUBROUTINE BANDIT_FILES ( IOU6, IOU7, IOU8, IOU9, IOU11, IOU12, IOU13, IOU14, IOU15, IOU16, IOU17 )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, F06, SC1

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: IOU6              ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU7              ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU8              ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU9              ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU11             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU12             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU13             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU14             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU15             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU16             ! Bandit file unit number
      INTEGER(LONG), INTENT(IN)       :: IOU17             ! Bandit file unit number

      END SUBROUTINE BANDIT_FILES

   END INTERFACE

   END MODULE BANDIT_FILES_Interface

