@echo off

echo Assalamoallikum Brother, hope you are good.

set /p "filename=Enter the file name (with extension): "


if not exist "%filename%" (
    echo The file "%filename%" does not exist.
    pause
    exit /b
)


attrib "%filename%" | find /i "H" >nul
if %errorlevel%==0 (
   
    set pass=123
    set /p "userpassword=Enter the password to unhide the file: "
     
    
    
    set "userpassword=%userpassword: =%"

    if "%userpassword%"=="%pass%" (
        attrib -h "%filename%"
        echo The file "%filename%" has been unhidden.
    ) else (
        echo Incorrect password. File remains hidden.
    )
) else (
    attrib +h "%filename%"
    echo The file "%filename%" has been hidden.
)

pause
