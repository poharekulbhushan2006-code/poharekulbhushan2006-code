@echo off
setlocal enabledelayedexpansion

echo =========================================================================
echo   Deploying Animated GitHub Profile Dashboard for @poharekulbhushan2006-code
echo =========================================================================
echo.

set REPO_NAME=poharekulbhushan2006-code
set GITHUB_USER=poharekulbhushan2006-code
set TARGET_DIR=%~dp0

echo [*] Target Directory: %TARGET_DIR%
echo [*] Target Repository: https://github.com/%GITHUB_USER%/%REPO_NAME%.git
echo.

cd /d "%TARGET_DIR%"

if not exist ".git" (
    echo [+] Initializing local Git repository...
    git init
    git branch -M main
)

echo [+] Staging animated dashboard assets and README...
git add README.md assets/ .github/

echo [+] Committing changes...
git commit -m "feat: launch animated public GitHub profile dashboard with telemetry and snake"

echo.
echo =========================================================================
echo   Next Step: Connect to your GitHub Remote and Push
echo =========================================================================
echo.
echo If you have already created the repo '%REPO_NAME%' on GitHub, run:
echo.
echo   git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
echo   git push -u origin main --force
echo.
echo Once pushed, your GitHub profile at:
echo   https://github.com/%GITHUB_USER%
echo will immediately display your animated dashboard to the public!
echo =========================================================================

pause
