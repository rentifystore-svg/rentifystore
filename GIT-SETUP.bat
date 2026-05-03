@echo off
title Rentify App Demo - Git Setup & Deploy
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Git Setup & Deploy
echo ==========================================
echo.

REM Change to the correct directory
cd /d "%~dp0"
echo Current directory: %CD%
echo.

REM Check if Git is installed
echo [1/5] Checking for Git...
git --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Git found! Proceeding with setup...
    goto :git_found
)

echo Git not found! Please install Git first:
echo.
echo 1. Download Git from: https://git-scm.com/download/win
echo 2. Run the installer with default settings
echo 3. Restart Command Prompt
echo 4. Run this file again
echo.
echo Opening Git download page...
start https://git-scm.com/download/win
goto :end

:git_found
echo.
echo [2/5] Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo Failed to initialize Git repository.
    goto :end
)

echo.
echo [3/5] Adding all files to Git...
git add .
if %errorlevel% neq 0 (
    echo Failed to add files to Git.
    goto :end
)

echo.
echo [4/5] Creating initial commit...
git commit -m "Initial commit: Rentify app demo landing page with interactive iPhone showcase"
if %errorlevel% neq 0 (
    echo Failed to create commit. You may need to configure Git first:
    echo.
    echo git config --global user.name "Your Name"
    echo git config --global user.email "your.email@example.com"
    echo.
    echo Run these commands, then run this file again.
    goto :end
)

echo.
echo [5/5] Git setup complete!
echo.
echo ==========================================
echo    NEXT STEPS:
echo ==========================================
echo.
echo 1. Create GitHub repository:
echo    - Go to https://github.com
echo    - Click "New repository"
echo    - Name: rentify-app-demo
echo    - Click "Create repository"
echo.
echo 2. Connect to GitHub:
echo    git remote add origin https://github.com/YOUR_USERNAME/rentify-app-demo.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Deploy to Netlify:
echo    - Go to https://netlify.com
echo    - Sign up with GitHub
echo    - Connect repository
echo    - Deploy site
echo.
echo ==========================================
echo    FILES READY FOR DEPLOYMENT:
echo ==========================================
echo.
echo - index.html (Main landing page)
echo - rentify-demo.html (Standalone version)
echo - assets/images/ (10 screenshot placeholders)
echo - netlify.toml (Netlify configuration)
echo - README.md (Project documentation)
echo.
echo Your Rentify app demo is ready for deployment!
echo.

:end
pause
