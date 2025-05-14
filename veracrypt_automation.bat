@echo off
setlocal enabledelayedexpansion

if "%~1"=="-m" goto menu

:: Check for sentinel file
if exist 104175546.txt (
    goto dismount
) else (
    goto mount
)

:mount
REM Mount encrypted file
set "VERAPATH=C:\Users\Kishor\104175546"
set "VERAPASS=104175546"
"%VERAPATH%\veracrypt.exe" /a /s /v "Y:\" /l X /p "%VERAPASS%" /e
echo File mounted
goto end

:dismount
REM Dismount encrypted file
set "VERAPATH=C:\Users\Kishor\104175546"
"%VERAPATH%\veracrypt.exe" /a /s /d X
echo File dismounted
goto end

:menu
REM Menu loop
echo Choose an option:
echo a. Locate veracrypt.exe and add its location to %%VERAPATH%%
echo b. Input password and store in %%VERAPASS%%
echo c. Remove environment variables
goto end

:end
