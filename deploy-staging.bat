@echo off
setlocal

set "PROJECT=C:\Projects\novavia-site"
set "DIST=%PROJECT%\dist"

set "WINSCP=C:\Program Files (x86)\WinSCP\WinSCP.com"
set "SESSION=Novavia-Staging"
set "REMOTE=/home/novavix/staging/"

cd /d "%PROJECT%"

echo ==============================
echo  Novavia - Deploy (Staging)
echo ==============================

echo [1/3] Build...
call npm run build
if errorlevel 1 (
  echo Build failed.
  pause
  exit /b 1
)

echo [2/3] Upload via SFTP (WinSCP)...
"%WINSCP%" ^
  /log="%PROJECT%\winscp-deploy.log" ^
  /command ^
    "open ""%SESSION%""" ^
    "option batch abort" ^
    "option confirm off" ^
    "synchronize remote ""%DIST%"" ""%REMOTE%"" -delete" ^
    "exit"

if errorlevel 1 (
  echo Upload failed. Check winscp-deploy.log
  pause
  exit /b 1
)

echo.
echo Opening staging site in browser...
start "" "https://staging.novaviaventures.com"


echo [3/3] Done.
pause
endlocal
