@echo off
title Rentify App Demo - Use Existing Git Repository
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Use Existing Git
echo ==========================================
echo.
echo Working with your existing Git repository...
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
    
    echo [4/4] Ready for GitHub push!
    echo.
    echo ==========================================
    echo    NEXT STEPS:
    echo ==========================================
    echo.
    echo 1. Connect to GitHub (if not already connected):
    echo    git remote add origin https://github.com/YOUR_USERNAME/rentify-app-demo.git
    echo    git branch -M main
    echo.
    echo 2. Push to GitHub:
    echo    git push -u origin main
    echo.
    echo 3. Deploy to Netlify:
    echo    - Go to https://netlify.com
    echo    - Sign up with GitHub
    echo    - Connect your repository
    echo    - Deploy site
    echo.
    
) else (
    echo No Git repository found in this directory.
    echo.
    echo Please run GIT-SETUP.bat first to initialize Git,
    echo or navigate to your existing Git repository.
    echo.
)

echo ==========================================
echo    FILES READY FOR DEPLOYMENT:
echo ==========================================
echo.
echo - index.html (Main landing page)
echo - rentify-demo.html (Standalone version)
echo - assets/images/ (10 screenshot placeholders)
echo - netlify.toml (Netlify configuration)
echo - README.md (Project documentation)
echo - DEPLOY-COMMANDS.txt (Deployment commands)
echo.
echo Your Rentify app demo is ready for deployment!
echo.

pause
