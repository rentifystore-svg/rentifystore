@echo off
echo ========================================
echo    Rentify App Demo - Localhost Setup
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python found! Starting server...
    echo.
    echo Server will run at: http://localhost:3000
    echo Press Ctrl+C to stop the server
    echo.
    cd /d "%~dp0"
    python -m http.server 3000
    goto :end
)

REM Check if Python3 is installed
python3 --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python3 found! Starting server...
    echo.
    echo Server will run at: http://localhost:3000
    echo Press Ctrl+C to stop the server
    echo.
    cd /d "%~dp0"
    python3 -m http.server 3000
    goto :end
)

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Node.js found! Starting server...
    echo.
    echo Server will run at: http://localhost:3000
    echo Press Ctrl+C to stop the server
    echo.
    cd /d "%~dp0"
    node server.js
    goto :end
)

echo.
echo ========================================
echo    No server software found!
echo ========================================
echo.
echo Python, Python3, and Node.js are not installed.
echo.
echo OPTIONS:
echo.
echo 1. Install Python from Microsoft Store
echo    - Search "Python" in Microsoft Store
echo    - Click "Install"
echo    - Run this file again
echo.
echo 2. Open the demo file directly
echo    - Double-click: rentify-demo.html
echo    - Works immediately without server
echo.
echo 3. Install Node.js from https://nodejs.org
echo    - Download and install Node.js
echo    - Run this file again
echo.

REM Ask user what to do
set /p choice="Open demo file directly? (y/n): "
if /i "%choice%"=="y" (
    echo.
    echo Opening rentify-demo.html in your default browser...
    start rentify-demo.html
) else (
    echo.
    echo Please install Python or Node.js to run localhost server.
    echo Or simply double-click rentify-demo.html to use the demo.
)

:end
pause
