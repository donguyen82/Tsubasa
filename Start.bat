@echo off
title Tsubasa - Luom Airdrop Auto
setlocal

:: Open terminal here
cd /d %~dp0

:: Set Welcome
echo Tool Free - Luom Airdrop

:: Check version Node.js
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js Not installed yet. Please install Node.js first
    exit /b 1
)

:: Run npm install
if not exist node_modules (
    echo The node_modules directory not found. Run npm install...
    npm install axios
) else (
    echo Installed successfully. Luom Airdrop
)

:: Run index.js for Node.js
echo Loading Tool...
node tsubasa.js

:: pause
pause

endlocal
