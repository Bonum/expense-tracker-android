@echo off
REM Quick Start Script for Expense Tracker Android App - Windows Version
REM This script helps you set up the GitHub repository quickly

echo ======================================
echo   Expense Tracker - Quick Setup
echo ======================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo [X] Git is not installed. Please install Git first:
    echo    https://git-scm.com/downloads
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

REM Get GitHub username
set /p GITHUB_USER="Enter your GitHub username: "

if "%GITHUB_USER%"=="" (
    echo [X] GitHub username cannot be empty
    pause
    exit /b 1
)

REM Get repository name
set /p REPO_NAME="Enter repository name (default: expense-tracker-android): "
if "%REPO_NAME%"=="" set REPO_NAME=expense-tracker-android

echo.
echo Configuration:
echo    GitHub User: %GITHUB_USER%
echo    Repository:  %REPO_NAME%
echo.

REM Confirm
set /p CONFIRM="Continue with this configuration? (y/n): "
if /i not "%CONFIRM%"=="y" (
    echo [X] Setup cancelled
    pause
    exit /b 0
)

echo.
echo Initializing Git repository...

REM Initialize git
git init
if errorlevel 1 (
    echo [X] Failed to initialize Git
    pause
    exit /b 1
)

echo [OK] Git initialized
echo.

REM Add all files
echo Adding files to Git...
git add .
if errorlevel 1 (
    echo [X] Failed to add files
    pause
    exit /b 1
)

echo [OK] Files added
echo.

REM Create commit
echo Creating initial commit...
git commit -m "Initial commit - Expense Tracker Android App"
if errorlevel 1 (
    echo [X] Failed to create commit
    pause
    exit /b 1
)

echo [OK] Commit created
echo.

REM Set up remote
set REMOTE_URL=https://github.com/%GITHUB_USER%/%REPO_NAME%.git
echo Setting up remote repository...
echo    URL: %REMOTE_URL%

git remote add origin %REMOTE_URL% 2>nul
if errorlevel 1 (
    echo Warning: Remote may already exist, removing and re-adding...
    git remote remove origin
    git remote add origin %REMOTE_URL%
)

echo [OK] Remote configured
echo.

REM Rename branch to main
echo Setting up main branch...
git branch -M main

echo [OK] Branch configured
echo.

REM Instructions for pushing
echo ======================================
echo   Ready to Push!
echo ======================================
echo.
echo Next steps:
echo.
echo 1. Create the repository on GitHub:
echo    Go to: https://github.com/new
echo    Repository name: %REPO_NAME%
echo    Make it Public or Private
echo    DO NOT initialize with README, .gitignore, or license
echo    Click 'Create repository'
echo.
echo 2. Push your code:
echo    Run this command: push.bat
echo    (or manually: git push -u origin main)
echo.
echo 3. After pushing, go to GitHub Actions tab to see your APK being built!
echo.
echo ======================================
echo   Setup Complete!
echo ======================================
echo.
pause
