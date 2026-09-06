@echo off
REM Quick Start Script for Sportybet AI Predictor (Windows)

echo 🎯 Sportybet AI Predictor - Quick Setup
echo ======================================
echo.

REM Check Python
echo ✓ Checking Python installation...
python --version
if errorlevel 1 (
    echo ❌ Python not found. Please install Python 3.8+
    pause
    exit /b 1
)
echo.

REM Create virtual environment
echo ✓ Creating virtual environment...
python -m venv venv
echo.

REM Activate virtual environment
echo ✓ Activating virtual environment...
call venv\Scripts\activate.bat
echo.

REM Upgrade pip
echo ✓ Upgrading pip...
python -m pip install --upgrade pip
echo.

REM Install requirements
echo ✓ Installing dependencies...
pip install flask flask-cors python-dotenv opencv-python pillow numpy requests pytesseract werkzeug
echo.

REM Run the app
echo 🚀 Starting Sportybet AI Predictor...
echo 📍 Open your browser and go to: http://localhost:5000
echo.
python app.py
pause
