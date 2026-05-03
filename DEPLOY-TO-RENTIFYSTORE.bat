@echo off
title Rentify App Demo - Deploy to rentifystore/rentifystore
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Deploy to GitHub
echo    Repository: rentifystore-svg/rentifystore
echo ==========================================
echo.

REM Change to the correct directory
cd /d "%~dp0"
echo Current directory: %CD%
echo.

REM Check if this is already a Git repository
if exist ".git" (
    echo Git repository already exists in this directory.
    echo.
    echo [1/4] Checking Git status...
    git status
    echo.
    
    echo [2/4] Adding all files to existing repository...
    git add .
    echo.
    
    echo [3/4] Creating commit...
    git commit -m "Update: Rentify app demo with interactive iPhone showcase and deployment-ready files"
    echo.
    
    echo [4/4] Connecting to rentifystore-svg/rentifystore repository...
    git remote add origin https://github.com/rentifystore-svg/rentifystore.git
    git branch -M main
    echo.
    
    echo Pushing to GitHub...
    git push -u origin main
    echo.
    
    echo ==========================================
    echo    DEPLOYMENT COMPLETE!
    echo ==========================================
    echo.
    echo Your code is now at: https://github.com/rentifystore-svg/rentifystore
    echo.
    echo Next step: Deploy to Netlify
    echo 1. Go to https://netlify.com
    echo 2. Sign up with GitHub
    echo 3. Connect rentifystore-svg/rentifystore repository
    echo 4. Deploy site
    echo.
    
) else (
    echo No Git repository found in this directory.
    echo.
    echo Initializing Git repository first...
    git init
    echo.
    echo Adding files...
    git add .
    echo.
    echo Creating initial commit...
    git commit -m "Initial commit: Rentify app demo landing page with interactive iPhone showcase"
    echo.
    echo Connecting to rentifystore-svg/rentifystore repository...
    git remote add origin https://github.com/rentifystore-svg/rentifystore.git
    git branch -M main
    echo.
    echo Pushing to GitHub...
    git push -u origin main
    echo.
    echo ==========================================
    echo    DEPLOYMENT COMPLETE!
    echo ==========================================
    echo.
    echo Your code is now at: https://github.com/rentifystore-svg/rentifystore
    echo.
    echo Next step: Deploy to Netlify
    echo 1. Go to https://netlify.com
    echo 2. Sign up with GitHub
    echo 3. Connect rentifystore-svg/rentifystore repository
    echo 4. Deploy site
    echo.
)

echo ==========================================
echo    FILES DEPLOYED:
echo ==========================================
echo.
echo - index.html (Main landing page)
echo - rentify-demo.html (Standalone version)
echo - assets/images/ (10 screenshot placeholders)
echo - netlify.toml (Netlify configuration)
echo - README.md (Project documentation)
echo - USE-EXISTING-GIT.bat (Git setup script)
echo.
echo Your Rentify app demo is now on GitHub!
echo.

pause
