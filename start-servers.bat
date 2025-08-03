@echo off
echo Starting Privoxx Website Servers...
echo.

echo Starting Backend Server...
start "Backend Server" cmd /k "cd server && npm start"

echo Waiting 3 seconds for backend to start...
timeout /t 3 /nobreak > nul

echo Starting Frontend Server...
start "Frontend Server" cmd /k "npm run dev"

echo.
echo Both servers are starting...
echo Backend: http://localhost:3001 (optional)
echo Frontend: http://localhost:8080
echo.
echo Press any key to exit this window...
pause > nul 