@echo off
title Rentify App Demo - Fix Localhost
color 0C
echo.
echo ==========================================
echo    Rentify App Demo - Fix Localhost
echo ==========================================
echo.
echo PROBLEM: Localhost server showing wrong directory
echo SOLUTION: Start server from correct directory
echo.

REM Force change to the correct directory
cd /d "c:\Users\paren\CascadeProjects\windsurf-project\new-project"
echo Current directory: %CD%
echo.

REM Verify we're in the right place
if exist "index.html" (
    echo ✅ Found index.html - Correct directory!
    echo.
    echo Stopping any existing servers...
    taskkill /f /im python.exe >nul 2>&1
    timeout /t 2 >nul
    echo.
    echo Starting Python HTTP server from correct location...
    echo.
    echo ==========================================
    echo    SERVER STARTING...
    echo    URL: http://localhost:3000
    echo    Directory: %CD%
    echo    Press Ctrl+C to stop
    echo ==========================================
    echo.
    python -m http.server 3000
) else (
    echo ❌ index.html not found!
    echo.
    echo Please navigate to the correct directory:
    echo cd "c:\Users\paren\CascadeProjects\windsurf-project\new-project"
    echo.
    echo Then run: python -m http.server 3000
    echo.
)

pause
