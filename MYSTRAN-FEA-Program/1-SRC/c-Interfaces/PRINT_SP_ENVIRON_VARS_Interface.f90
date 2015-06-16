! ##################################################################################################################################

   MODULE PRINT_SP_ENVIRON_VARS_Interface

   INTERFACE

      SUBROUTINE PRINT_SP_ENVIRON_VARS


      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  ERR, F06
      USE MYSTRAN_Version, ONLY       :  MYSTRAN_VER_NUM
      USE SP_ENVIRON_VARS, ONLY       :  DATE_LAST_RUN, DAYS_INSTALLED, DAYS_LEFT, EXPIRE_DATE, EXPIRE_VER, FINGERPRINT, FIRST_RUN,&
                                         KEY_CREATED, KEY_STRING, ALLOWABLE_PROTECTED_SOLNS, PROTECTED_FILE, SP_MYSTRAN_VER_NUM,   &
                                         TOTAL_USES, USER_KEY, USER_NAME, USES_LEFT_AFTER, WEBSITE_URL

      IMPLICIT NONE

      END SUBROUTINE PRINT_SP_ENVIRON_VARS

   END INTERFACE

   END MODULE PRINT_SP_ENVIRON_VARS_Interface

