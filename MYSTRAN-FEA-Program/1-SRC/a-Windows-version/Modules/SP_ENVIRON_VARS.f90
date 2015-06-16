! ##################################################################################################################################

      MODULE SP_ENVIRON_VARS

! Environment variables passed to MYSTRAN from Software Passport (which is used to require an unlock key to run MYSTRAN)

      USE PENTIUM_II_KIND, ONLY       :  BYTE
  
      IMPLICIT NONE

      SAVE

      CHARACTER(256*BYTE)              :: DATE_LAST_RUN     ! Date program was last run (YYY.MM.DD)
      CHARACTER(256*BYTE)              :: DAYS_INSTALLED    ! Num days since the current key has been installed
      CHARACTER(256*BYTE)              :: DAYS_LEFT         ! Num days left on certificate (or null if days not limiting factor)
      CHARACTER(256*BYTE)              :: EXPIRE_DATE       ! Date key expires (YYY.MM.DD)
      CHARACTER(256*BYTE)              :: EXPIRE_VER        ! Version number x.xx certificate will expire
      CHARACTER(256*BYTE)              :: FINGERPRINT       ! Computer fingerprint
      CHARACTER(256*BYTE)              :: FIRST_RUN         ! "TRUE" if this is first run otherwise null
      CHARACTER(256*BYTE)              :: KEY_CREATED       ! Date key was created on (YYY.MM.DD)
      CHARACTER(256*BYTE)              :: KEY_STRING        ! The string embedded in the key, if any (or null)

                                                            ! 'STATICS', 'EIGENVALUES' or 'BOTH
      CHARACTER(256*BYTE)              :: ALLOWABLE_PROTECTED_SOLNS

      CHARACTER(256*BYTE)              :: PROTECTED_FILE    ! File name (incl path) of the protected file
      CHARACTER(256*BYTE)              :: SP_MYSTRAN_VER_NUM! Program version number stored in SP
      CHARACTER(256*BYTE)              :: TOTAL_USES        ! Total number of times program has been started since key installed
      CHARACTER(256*BYTE)              :: USER_KEY          ! License key value
      CHARACTER(256*BYTE)              :: USER_NAME         ! User name
      CHARACTER(256*BYTE)              :: USES_LEFT_AFTER   ! Number of uses left (or null if total number not limiting factor)
      CHARACTER(256*BYTE)              :: WEBSITE_URL       ! URL where program can be bought

      END MODULE SP_ENVIRON_VARS


