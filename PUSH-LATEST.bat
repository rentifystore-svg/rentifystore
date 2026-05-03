@echo off
title Rentify App Demo - Push Latest to Git
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Push Latest to Git
echo ==========================================
echo.

REM Change to the correct directory
cd /d "%~dp0"
echo Current directory: %CD%
echo.

REM Check if this is a Git repository
if exist ".git" (
    echo Git repository found in this directory.
    echo.
    echo [1/4] Checking Git status...
    git status
    echo.
    
    echo [2/4] Adding all new files to repository...
    git add .
    echo.
    
    echo [3/4] Creating commit with high-fidelity changes...
    git commit -m "High-Fidelity Update: Complete code-based app demo recreation with buttery smooth animations

- Added rentify-high-fidelity.html with complete 10-screen app demo
- iPhone 15 frame with realistic styling and animations
- CSS-animated logo with bounce effect
- Interactive navigation with hover effects
- Search & categories with working filters
- Map page with animated pins
- Profile page with verified badges
- Waitlist form with Netlify integration
- No external images required - pure CSS recreation
- Buttery smooth 60fps animations throughout
- Mobile-responsive design
- Added ACCESS-HIGH-FIDELITY.bat for direct browser access"
    echo.
    
    echo [4/4] Pushing to GitHub repository...
    git push origin main
    echo.
    
    echo ==========================================
    echo    PUSH COMPLETE!
    echo ==========================================
    echo.
    echo Your high-fidelity app demo is now on GitHub!
    echo Repository: https://github.com/rentifystore-svg/rentifystore
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
    echo Please run GIT-SETUP.bat first to initialize Git,
    echo or navigate to your existing Git repository.
    echo.
)

echo ==========================================
echo    FILES BEING PUSHED:
echo ==========================================
echo.
echo - rentify-high-fidelity.html (NEW - Complete app demo)
echo - ACCESS-HIGH-FIDELITY.bat (NEW - Direct access)
echo - high-fidelity-recreation.md (NEW - Documentation)
echo - index.html (Updated with image path fixes)
echo - All deployment scripts and documentation
echo.
echo Your high-fidelity app demo is now ready for deployment!
echo.

pause
