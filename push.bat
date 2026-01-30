@echo off
REM Helper script to push to GitHub - Windows Version

echo ======================================
echo   Pushing to GitHub...
echo ======================================
echo.

REM Check if remote exists
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo [X] No remote repository configured
    echo    Run setup.bat first
    pause
    exit /b 1
)

for /f "delims=" %%i in ('git remote get-url origin') do set REMOTE_URL=%%i
echo Pushing to: %REMOTE_URL%
echo.

REM Push to GitHub
echo This may take a moment...
git push -u origin main

if errorlevel 0 (
    echo.
    echo ======================================
    echo   Successfully Pushed!
    echo ======================================
    echo.
    echo Next steps:
    echo.
    echo 1. Go to your repository on GitHub
    echo 2. Click on the 'Actions' tab
    echo 3. Watch your APK being built! (takes 5-10 minutes^)
    echo 4. Download the APK from Actions -^> Artifacts
    echo.
    echo Repository URL:
    set REPO_URL=%REMOTE_URL:.git=%
    echo    %REPO_URL%
    echo.
    echo Actions URL:
    echo    %REPO_URL%/actions
    echo.
) else (
    echo.
    echo ======================================
    echo   Push Failed
    echo ======================================
    echo.
    echo Common issues:
    echo.
    echo 1. Repository doesn't exist on GitHub
    echo    Create it at: https://github.com/new
    echo.
    echo 2. Authentication failed
    echo    Use a Personal Access Token (not password^)
    echo    Generate at: https://github.com/settings/tokens
    echo.
    echo 3. Permission denied
    echo    Make sure you own the repository
    echo.
)

pause
