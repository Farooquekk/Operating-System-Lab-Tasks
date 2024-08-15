@echo off
setlocal enabledelayedexpansion


set /p directory=Enter the directory path to organize:

if not exist "%directory%" (
    echo The directory "%directory%" does not exist.
    pause
    exit /b
)


cd /d "%directory%"


for %%f in (*.*) do (
    
    set "ext=%%~xf"
    set "ext=!ext:~1!"

    
    if not "!ext!"=="" (
        :: Create a directory for the extension if it doesn't exist
        if not exist "!ext!\" mkdir "!ext!"

        
        move "%%f" "!ext!\"
    )
)

echo Files have been organized by their extensions.
pause
