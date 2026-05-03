@echo off
title Rentify App Demo - Quick Localhost
color 0B
echo.
echo ==========================================
echo    Rentify App Demo - Quick Localhost
echo ==========================================
echo.
echo Starting localhost server for Rentify app demo...
echo.

REM Change to the correct directory
cd /d "%~dp0"

REM Try Python first
echo Checking for Python...
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python found! Starting server...
    echo.
    echo ==========================================
    echo    SERVER STARTING...
    echo    URL: http://localhost:3000
    echo    Press Ctrl+C to stop
    echo ==========================================
    echo.
    python -m http.server 3000
    goto :end
)

REM Try Python3
echo Python not found, trying Python3...
python3 --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python3 found! Starting server...
    echo.
    echo ==========================================
    echo    SERVER STARTING...
    echo    URL: http://localhost:3000
    echo    Press Ctrl+C to stop
    echo ==========================================
    echo.
    python3 -m http.server 3000
    goto :end
)

REM No Python found
echo.
echo ==========================================
echo    PYTHON NOT FOUND!
echo ==========================================
echo.
echo To run localhost, you need Python installed.
echo.
echo QUICK SOLUTION:
echo Opening rentify-demo.html directly in browser...
echo This gives you the same experience without server!
echo.
start rentify-demo.html
echo.
echo ==========================================
echo    IMMEDIATE ACCESS PROVIDED!
echo ==========================================
echo.
echo The Rentify app demo is now open in your browser!
echo Features available:
echo - iPhone 15 frame with 10-screen slideshow
echo - Image slider (1s fade, 3s hold)
echo - Waitlist form with phone validation
echo - Responsive design
echo - Modern animations
echo.

:end
pause
