! ##################################################################################################################################

      SUBROUTINE PRINT_SP_ENVIRON_VARS

! Prints environment variables that Software Passport passes to MYSTRAN

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  ERR, F06
      USE MYSTRAN_Version, ONLY       :  MYSTRAN_VER_NUM
      USE SP_ENVIRON_VARS, ONLY       :  DATE_LAST_RUN, DAYS_INSTALLED, DAYS_LEFT, EXPIRE_DATE, EXPIRE_VER, FINGERPRINT, FIRST_RUN,&
                                         KEY_CREATED, KEY_STRING, ALLOWABLE_PROTECTED_SOLNS, PROTECTED_FILE, SP_MYSTRAN_VER_NUM,   &
                                         TOTAL_USES, USER_KEY, USER_NAME, USES_LEFT_AFTER, WEBSITE_URL

      IMPLICIT NONE

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: IEND              ! Counter

! **********************************************************************************************************************************
      IEND = 0
      DO I=255,1,-1
         IF (SP_MYSTRAN_VER_NUM(I:I) == ' ') THEN
            CYCLE
         ELSE
            IEND = I
            EXIT
         ENDIF
      ENDDO

      IF (IEND > 0) THEN

         IF (SP_MYSTRAN_VER_NUM(1:IEND) /= MYSTRAN_VER_NUM(1:IEND)) THEN
            WRITE(ERR,944) MYSTRAN_VER_NUM(1:IEND), SP_MYSTRAN_VER_NUM(1:IEND)
            WRITE(F06,944) MYSTRAN_VER_NUM(1:IEND), SP_MYSTRAN_VER_NUM(1:IEND)
         ENDIF

         WRITE(F06,1001)
         WRITE(F06,1002)

         IF      (ALLOWABLE_PROTECTED_SOLNS == 'TRIAL'      ) THEN
            WRITE(F06,1010) ALLOWABLE_PROTECTED_SOLNS, SP_MYSTRAN_VER_NUM
         ELSE IF (ALLOWABLE_PROTECTED_SOLNS == 'STATICS+EIGENVALUES'    ) THEN
            WRITE(F06,1010) ALLOWABLE_PROTECTED_SOLNS, SP_MYSTRAN_VER_NUM
         ENDIF

         WRITE(F06,1016) PROTECTED_FILE

         IF (ALLOWABLE_PROTECTED_SOLNS /= 'TRIAL') THEN
            WRITE(F06,1021) USER_NAME
            WRITE(F06,1022) USER_KEY
            WRITE(F06,1031) KEY_CREATED
            IF (KEY_STRING(1:1) /= ' ') THEN
               WRITE(F06,1034) KEY_STRING
            ENDIF
            WRITE(F06,1033) DAYS_INSTALLED
         ENDIF
         WRITE(F06,1032) DATE_LAST_RUN
         WRITE(F06,1051) TOTAL_USES
         IF (EXPIRE_VER(1:1) /= ' ') THEN
            WRITE(F06,1054) EXPIRE_VER
         ENDIF
         IF (EXPIRE_DATE(1:1) /= ' ') THEN
            WRITE(F06,1064) EXPIRE_DATE
         ENDIF

         IF (ALLOWABLE_PROTECTED_SOLNS(1:5) == 'TRIAL') THEN
            IF      (USES_LEFT_AFTER(1:1) /= ' ') THEN
               WRITE(F06,1061) USES_LEFT_AFTER
            ELSE IF (DAYS_LEFT(1:1) /= ' ') THEN
               IF (DAYS_LEFT(1:1) == '1') THEN
                  WRITE(F06,1062) DAYS_LEFT
               ELSE
                  WRITE(F06,1063) DAYS_LEFT
               ENDIF
            ENDIF
         ENDIF

         WRITE(F06,*)
         WRITE(F06,1041) FINGERPRINT
         WRITE(F06,1081) WEBSITE_URL
         WRITE(F06,1001)
         WRITE(F06,*)

      ELSE

         WRITE(ERR,949) SP_MYSTRAN_VER_NUM
         WRITE(F06,949) SP_MYSTRAN_VER_NUM

      ENDIF

! **********************************************************************************************************************************
  944 FORMAT(' *ERROR   944: PROGRAMMING ERROR IN SUBROUTINE PRINT_SP_ENVIRON_VARS'                                                &
                    ,/,14X,' VERSION NUMBERS OF MYSTRAN FROM MYSTRAN (VERSION ',A,') AND SP (VERSION ',A,') ARE DIFFERENT '        &
                    ,/,14x,' THIS IS NOT A FATAL ERROR')

  949 FORMAT(' *ERROR   949: CANNOT PRINT SP ENVIRONMENT VARIABLES. ERROR READING SP_MYSTRAN_VER_NUM = "',A,'"')

 1001 FORMAT(' *******************************************************************************************************************'&
             ,'****************')

 1002 FORMAT(' Environment variables from SP:',/,' -----------------------------')

 1010 FORMAT(' This ',A5 ,' edition of MYSTRAN ',A4,' will run all features of MYSTRAN')  

 1011 FORMAT(' The license key for this ',A7 ,' edition of MYSTRAN ',A4,' will run statics but will not run eigenvalues')  

 1012 FORMAT(' The license key for this ',A11,' edition of MYSTRAN ',A4,' will run eigenvalues but will not run statics')  

 1013 FORMAT(' The license key for this ',A4 ,' edition of MYSTRAN ',A4,' will run both statics and eigenvalues')  

 1016 FORMAT(' The path and file name of MYSTRAN are ........................................... : ',A )

 1021 FORMAT(' The name of the user licensed to run MYSTRAN is ................................. : ',A )

 1022 FORMAT(' The license key is .............................................................. : ',A )

 1031 FORMAT(' The license key was created on .................................................. : ',A )

 1032 FORMAT(' The date MYSTRAN was last run was ............................................... : ',A )

 1033 FORMAT(' The number of days the current license key has been installed is ................ : ',A )

 1034 FORMAT(' The string imbedded with the key is ............................................. : ',A )

 1041 FORMAT(' The fingerprint of this computer is ............................................. : ',A )

 1051 FORMAT(' The total number of uses of MYSTRAN with the current key (including this one) is  : ',A )

 1054 FORMAT(' Use of this license will expire on MYSTRAN version .............................. : ',A )

 1061 FORMAT(' The number of uses left before the trial edition expires is                       : ',A )

 1062 FORMAT(' The number of days left before the trial edition expires (including today) is ... : ',A,//                          &
6X,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *',/,  &
6X,'* * * * * T H I S   E D I T I O N   O F   M Y S T R A N   E X P I R E S   A T   M I D N I G H T   T O N I G H T * * * * *',/,  &
6X,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *')

 1063 FORMAT(' The number of days left before the trial edition expires (including today) is ... : ',A,/,                          &
             ' (when this value is 1 MYSTRAN will cease to run at midnight)')

 1064 FORMAT(' This license will expire on  .................................................... : ',A )

 1081 FORMAT(' The URL where the user can purchase MYSTRAN is .................................. : ',A )

! **********************************************************************************************************************************

      END SUBROUTINE PRINT_SP_ENVIRON_VARS

