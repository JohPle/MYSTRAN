! ##################################################################################################################################

      SUBROUTINE GET_SP_ENVIRON_VARS

! Gets environment variables that Software Passport passes to MYSTRAN.
! A test is made to tell if unprotected code is running and, if so, resets PROTECETD to 'N'

      USE SCONTR, ONLY                :  PROTECTED
      USE SP_ENVIRON_VARS, ONLY       :  DATE_LAST_RUN, DAYS_INSTALLED, DAYS_LEFT, EXPIRE_DATE, EXPIRE_VER, FINGERPRINT, FIRST_RUN,&
                                         KEY_CREATED, KEY_STRING, ALLOWABLE_PROTECTED_SOLNS, PROTECTED_FILE, SP_MYSTRAN_VER_NUM,   &
                                         TOTAL_USES, USER_KEY, USER_NAME, USES_LEFT_AFTER, WEBSITE_URL

      IMPLICIT NONE

! **********************************************************************************************************************************
! Initialize all variables

      ALLOWABLE_PROTECTED_SOLNS(1:) = ' '
      DATE_LAST_RUN(1:)             = ' '     ;     DATE_LAST_RUN(1:4)      = 'null'
      DAYS_INSTALLED(1:)            = ' '     ;     DAYS_INSTALLED(1:4)     = 'null'
      DAYS_LEFT(1:)                 = ' '     ;     DAYS_LEFT(1:4)          = 'null'
      EXPIRE_DATE(1:)               = ' '     ;     EXPIRE_DATE(1:4)        = 'null'
      EXPIRE_VER(1:)                = ' '     ;     EXPIRE_VER(1:4)         = 'null'
      FINGERPRINT(1:)               = ' '     ;     FINGERPRINT(1:4)        = 'null'
      KEY_CREATED(1:)               = ' '     ;     KEY_CREATED(1:4)        = 'null'
      KEY_STRING(1:)                = ' '     ;     KEY_STRING(1:4)         = 'null'
      PROTECTED_FILE(1:)            = ' '     ;     PROTECTED_FILE(1:4)     = 'null'
      TOTAL_USES(1:)                = ' '     ;     TOTAL_USES(1:4)         = 'null'
      USER_KEY(1:)                  = ' '     ;     USER_KEY(1:4)           = 'null'
      USER_NAME(1:)                 = ' '     ;     USER_NAME(1:4)          = 'null'
      USES_LEFT_AFTER(1:)           = ' '     ;     USES_LEFT_AFTER(1:4)    = 'null'
      SP_MYSTRAN_VER_NUM(1:)        = ' '     ;     SP_MYSTRAN_VER_NUM(1:4) = 'null'
      WEBSITE_URL(1:)               = ' '     ;     WEBSITE_URL(1:4)        = 'null'

! Get all variables

      CALL GETENV ( 'EDITION'      , ALLOWABLE_PROTECTED_SOLNS )
      CALL GETENV ( 'DATELASTRUN'  , DATE_LAST_RUN )
      CALL GETENV ( 'DAYSINSTALLED', DAYS_INSTALLED  )
      CALL GETENV ( 'DAYSLEFT'     , DAYS_LEFT )
      CALL GETENV ( 'EXPIREDATE'   , EXPIRE_DATE )
      CALL GETENV ( 'EXPIREVER'    , EXPIRE_VER )
      CALL GETENV ( 'FINGERPRINT'  , FINGERPRINT )
      CALL GETENV ( 'KEYCREATED'   , KEY_CREATED  )
      CALL GETENV ( 'KEYSTRING'    , KEY_STRING )
      CALL GETENV ( 'PROTECTEDFILE', PROTECTED_FILE )
      CALL GETENV ( 'TOTALUSES'    , TOTAL_USES )
      CALL GETENV ( 'USERKEY'      , USER_KEY  )
      CALL GETENV ( 'USERNAME'     , USER_NAME )
      CALL GETENV ( 'USESLEFTAFTER', USES_LEFT_AFTER )
      CALL GETENV ( 'VERSIONNUMBER', SP_MYSTRAN_VER_NUM )
      CALL GETENV ( 'WEBSITEURL'   , WEBSITE_URL )

! **********************************************************************************************************************************

      END SUBROUTINE GET_SP_ENVIRON_VARS

