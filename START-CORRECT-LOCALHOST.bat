@echo off
title Rentify App Demo - Correct Localhost
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Correct Localhost
echo ==========================================
echo.

REM Change to the correct directory first
cd /d "%~dp0"
echo Current directory: %CD%
echo.

REM Check if we're in the right directory
if exist "index.html" (
    echo ✅ Found index.html - Correct directory!
    echo.
    echo Starting Python HTTP server...
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
    echo Please make sure you're running this from:
    echo c:\Users\paren\CascadeProjects\windsurf-project\new-project\
    echo.
    echo Current directory: %CD%
    echo.
    echo Files in current directory:
    dir /b
    echo.
)

pause
