@echo off

:menu
echo 5 Favorite Websites
echo 1. Simple Foodie Web page
echo 2. My Social Media Links 
echo 3. GITHUB QR code
echo 4. Chai Code
echo 5. W3 Schools
echo 6. Exit
set /p choice=Enter your choice:

if %choice%==1 (
    start https://foodisimplewebpage.netlify.app/
    pause
    goto menu
)

if %choice%==2 (
    start https://mysocialmedialinks.netlify.app/
    pause
    goto menu
)

if %choice%==3 (
    start https://mygithubqrcode.netlify.app/
    pause
    goto menu
)

if %choice%==4 (
    start https://chaicode.com/
    pause
    goto menu
)

if %choice%==5 (
    start https://w3schools.com/
    pause
    goto menu
)

if %choice%==6 goto exit

:exit
exit
