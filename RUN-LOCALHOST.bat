@echo off
title Rentify App Demo - Localhost Server
color 0A
echo.
echo ==========================================
echo    Rentify App Demo - Localhost Server
echo ==========================================
echo.

REM Change to the correct directory
cd /d "%~dp0"
echo Current directory: %CD%
echo.

REM Try Python first
echo [1/3] Checking for Python...
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
    goto :success
)

REM Try Python3
echo [2/3] Python not found, checking Python3...
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
    goto :success
)

REM Try Node.js
echo [3/3] Python not found, checking Node.js...
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Node.js found! Starting server...
    echo.
    echo ==========================================
    echo    SERVER STARTING...
    echo    URL: http://localhost:3000
    echo    Press Ctrl+C to stop
    echo ==========================================
    echo.
    node server.js
    goto :success
)

REM No server found
echo.
echo ==========================================
echo    NO SERVER SOFTWARE FOUND!
echo ==========================================
echo.
echo To run localhost, you need:
echo.
echo 1. Python (Recommended)
echo    - Open Microsoft Store
echo    - Search "Python"
echo    - Click "Install"
echo    - Run this file again
echo.
echo 2. Node.js (Alternative)
echo    - Download from https://nodejs.org
echo    - Install and run this file again
echo.
echo 3. Direct Access (No installation)
echo    - Double-click: rentify-demo.html
echo    - Works immediately in browser
echo.

set /p choice="Install Python from Microsoft Store? (y/n): "
if /i "%choice%"=="y" (
    echo.
    echo Opening Microsoft Store to install Python...
    start ms-windows-store://pdp/?productid=9P7X6S5B12X0
    echo.
    echo After installation, run this file again.
) else (
    echo.
    echo Opening rentify-demo.html directly...
    start rentify-demo.html
)

goto :end

:success
echo.
echo ==========================================
echo    SERVER RUNNING SUCCESSFULLY!
echo    Open: http://localhost:3000
echo ==========================================

:end
pause
