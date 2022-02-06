set /A numDays=10

reg query HKEY_CURRENT_USER\time
if %ERRORLEVEL% EQU 1 reg add HKEY_CURRENT_USER\time /v day /t REG_SZ /d 100

FOR /F "tokens=2* skip=2" %%a in ('reg query HKEY_CURRENT_USER\time /v day') do set /A dateReg=%%b

set /A date=%date:~7,2%

if %dateReg% LEQ %date% (set /A dayPass=%date%-%dateReg%)

if %dateReg% GTR %date% (set /A dayPass=30-%dateReg%+%date%)

if %dayPass% LSS %numDays% exit /b

reg add HKEY_CURRENT_USER\time /v day /t REG_SZ /f /d %date%
