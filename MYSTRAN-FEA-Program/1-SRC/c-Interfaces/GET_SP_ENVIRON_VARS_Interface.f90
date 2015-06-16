! ##################################################################################################################################

   MODULE GET_SP_ENVIRON_VARS_Interface

   INTERFACE

      SUBROUTINE GET_SP_ENVIRON_VARS


      USE SCONTR, ONLY                :  PROTECTED
      USE SP_ENVIRON_VARS, ONLY       :  DATE_LAST_RUN, DAYS_INSTALLED, DAYS_LEFT, EXPIRE_DATE, EXPIRE_VER, FINGERPRINT, FIRST_RUN,&
                                         KEY_CREATED, KEY_STRING, ALLOWABLE_PROTECTED_SOLNS, PROTECTED_FILE, SP_MYSTRAN_VER_NUM,   &
                                         TOTAL_USES, USER_KEY, USER_NAME, USES_LEFT_AFTER, WEBSITE_URL

      IMPLICIT NONE

      END SUBROUTINE GET_SP_ENVIRON_VARS

   END INTERFACE

   END MODULE GET_SP_ENVIRON_VARS_Interface

