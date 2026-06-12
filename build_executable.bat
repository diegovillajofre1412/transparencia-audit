@echo off
REM Build script for Transparencia Audit executable (Windows)

echo ================================
echo Building Transparencia Audit...
echo ================================

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo X Python is not installed
    exit /b 1
)

echo [OK] Python found

REM Install dependencies
echo.
echo Installing dependencies...
pip install -r requirements.txt

if errorlevel 1 (
    echo X Failed to install dependencies
    exit /b 1
)

echo [OK] Dependencies installed

REM Build executable
echo.
echo Building executable...
pyinstaller --onefile ^
    --name "transparencia-audit" ^
    --icon=icon.ico ^
    --add-data "agents;agents" ^
    --collect-all openpyxl ^
    --collect-all pandas ^
    --console ^
    main.py

if errorlevel 1 (
    echo X Build failed
    exit /b 1
)

echo.
echo ================================
echo [OK] Build successful!
echo ================================
echo.
echo Executable location:
echo   .\dist\transparencia-audit.exe
echo.
echo Usage:
echo   .\dist\transparencia-audit.exe --seeds urls.txt --out .\output
echo.
