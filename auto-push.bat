@echo off
setlocal EnableDelayedExpansion

for /f "delims=" %%f in ('git ls-files --others --exclude-standard') do (
    echo.
    echo =====================================
    echo Adding: %%f

    git add "%%f"

    git commit -m "Add %%~nxf"

    git push
)

echo.
echo Finished!
pause