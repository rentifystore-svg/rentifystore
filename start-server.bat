@echo off
echo Starting Rentify App Demo Server...
echo.

REM Try Python first
python -m http.server 3000 2>nul
if %errorlevel% equ 0 goto :server_running

REM Try Python3
python3 -m http.server 3000 2>nul
if %errorlevel% equ 0 goto :server_running

REM Try Node.js
node server.js 2>nul
if %errorlevel% equ 0 goto :server_running

echo.
echo Python and Node.js not found. Opening the demo file directly...
echo.
echo Opening rentify-demo.html in your default browser...
start rentify-demo.html
goto :end

:server_running
echo.
echo Server is running at: http://localhost:3000
echo Press Ctrl+C to stop the server
echo.
echo Opening http://localhost:3000 in your browser...
timeout /t 2 >nul
start http://localhost:3000

:end
pause
