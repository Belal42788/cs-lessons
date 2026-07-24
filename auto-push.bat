@echo off
setlocal

for /r %%f in (*) do (
    git ls-files --error-unmatch "%%f" >nul 2>&1
    if errorlevel 1 (
        echo Adding: %%f
        git add "%%f"
        git commit -m "Add %%~nxf"
        git push
    )
)

echo Finished!
pause