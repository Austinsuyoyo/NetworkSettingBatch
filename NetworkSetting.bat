@ECHO off
ECHO script started
:: Global Setting
TITLE Network Setting By AustinSuyoyo v1.0
SETLOCAL enabledelayedexpansion 
COLOR 0A
MODE CON: COLS=100 LINES=30

:: Create, convert, and save the box-drawing characters.
>"%temp%\boxdrw.~b64" echo(//4CJSQlYSViJVYlVSVjJVElVyVdJVwlWyUQJRQlNCUsJRwlACU8JV4lXyVaJVQlaSVmJWAlUCVsJWclaCVkJWUlWSVYJVIlUyVrJWolGCUMJQ==
>NUL certutil.exe -f -decode "%temp%\boxdrw.~b64" "%temp%\boxdrw.~u16"
FOR /f %%i IN ('TYPE "%temp%\boxdrw.~u16"') DO SET "box=%%i"
DEL "%temp%\boxdrw.~b64" "%temp%\boxdrw.~u16"

::-----------------------------------------------------
:menu
FOR /f "tokens=4 delims=[] " %%i IN ('ver') DO SET VERSION=%%i

FOR /f "tokens=1-2 delims=." %%i in ("%VERSION%") DO SET VERSION=%%i.%%j
::Windows 2000
if "%VERSION%" == "5.00" GOTO notsupport
::Windows 2000
IF "%VERSION%" == "5.0" GOTO notsupport
::Windows XP
IF "%VERSION%" == "5.1" GOTO notsupport
::Windows Server 2003
IF "%VERSION%" == "5.2" GOTO notsupport
::Windows Vista
IF "%VERSION%" == "6.0" GOTO notsupport
::Windows 7
IF "%VERSION%" == "6.1" GOTO menu7
::Windows 8
IF "%VERSION%" == "6.2" GOTO notsupport
::Windows 8.1
IF "%VERSION%" == "6.3" GOTO notsupport
::Windows 10
IF "%VERSION%" == "6.4" GOTO menu10
::Windows 10
IF "%VERSION%" == "10.0" GOTO menu10

:menu10
:: Banner of This Program
CLS
ECHO %box:~22,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~8,1%
ECHO %box:~7,1%                                                          %box:~7,1%
ECHO %box:~7,1%            _   _      _                      _           %box:~7,1%
ECHO %box:~7,1%           ^| \ ^| ^| ___^| ^|___      _____  _ __^| ^| __       %box:~7,1%
ECHO %box:~7,1%           ^|  \^| ^|/ _ \ __\ \ /\ / / _ \^| '__^| ^|/ /       %box:~7,1%
ECHO %box:~7,1%           ^| ^|\  ^|  __/ ^|_ \ V  V / (_) ^| ^|  ^|   ^<        %box:~7,1%
ECHO %box:~7,1%           ^|_^| \_^|\___^|\__^| \_/\_/ \___/^|_^|  ^|_^|\_\       %box:~7,1%
ECHO %box:~7,1%               ____       _   _   _                       %box:~7,1%
ECHO %box:~7,1%              / ___^|  ___^| ^|_^| ^|_(_)_ __   __ _           %box:~7,1%
ECHO %box:~7,1%              \___ \ / _ \ __^| __^| ^| '_ \ / _` ^|          %box:~7,1%
ECHO %box:~7,1%               ___) ^|  __/ ^|_^| ^|_^| ^| ^| ^| ^| (_^| ^|          %box:~7,1%
ECHO %box:~7,1%              ^|____/ \___^|\__^|\__^|_^|_^| ^|_^|\__, ^|          %box:~7,1%
ECHO %box:~7,1%                                          ^|___/           %box:~7,1%
ECHO %box:~7,1%                     Author: @AustinSuyoyo                %box:~7,1%
ECHO %box:~33,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~26,1%%box:~10,1%
GOTO menuoption
:menu7
CLS
ECHO  ############################################################
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                    Network                               #
ECHO  #                                                          #
ECHO  #                         Setting                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                                                          #
ECHO  #                  Author: @AustinSuyoyo                   #
ECHO  ############################################################
:menuoption
ECHO  ______________________________________________________________________
ECHO.
ECHO       1. Show all network ip addresses
ECHO       2. Config ip addresses
ECHO       3. Ping
ECHO       4. Exit
ECHO  ______________________________________________________________________
ECHO.

:: Get All PC Network Name...
SET Counter=0
SET List=
FOR /F "skip=3 tokens=3* delims= " %%a IN ('netsh interface show interface') DO (
	SET /a Counter+=1
	SET List=!List!!Counter!
	SET NetNameArray[!Counter!]=%%b
)

CHOICE /C 1234 /M "Select an option: "
ECHO %ERRORLEVEL%
IF ERRORLEVEL 4 GOTO exit
IF ERRORLEVEL 3 GOTO ping
IF ERRORLEVEL 2 GOTO config_ip
IF ERRORLEVEL 1 GOTO show_all

::-----------------------------------------------------
:ping
CLS 
ECHO.
ECHO Select an IP you want to ping or type IP
ECHO 1. 192.168.168.168
ECHO 2. 169.254.188.20
ECHO 3. Custon IP
ECHO 4. Back to menu
ECHO.
CHOICE /C 1234 /M "Select an option: "

IF ERRORLEVEL 4 GOTO menu
IF ERRORLEVEL 1 SET PingNumber=192.168.168.168
IF ERRORLEVEL 2 SET PingNumber=169.254.188.20
IF ERRORLEVEL 3 SET /P PingNumber="Type IP address: "

ping %PingNumber% -n 2

PAUSE
GOTO menu

::-----------------------------------------------------
:show_all
CLS 
ECHO.
ECHO Show All Network IP information
netsh interface ipv4 show addresses

ECHO.
PAUSE
GOTO menu
::-----------------------------------------------------
:config_ip
SET /A LastNum=%Counter%+1
CLS 
ECHO.
ECHO Which Network do you want to config ?
ECHO.
FOR /L %%a IN (1,1,%LastNum%) DO (
	IF %%a NEQ %LastNum% ECHO %%a. !NetNameArray[%%a]!
	IF %%a EQU %LastNum% ECHO %%a. Back to menu
	ECHO.
)
CHOICE /C %List%%LastNum% /M "Please type a number"
IF ERRORLEVEL %LastNum% GOTO menu
SET /A SetNumber=%ERRORLEVEL%

GOTO settingip
PAUSE

::-----------------------------------------------------
:settingip
ECHO. 
ECHO 1. 192.168.168.10  / Mask 255.255.0.0
ECHO 2. 169.254.188.10  / Mask 255.255.0.0
ECHO 3. Enable DHCP
ECHO 4. Custom Set IP / Mask
ECHO 5. Back to select network
ECHO. 
CHOICE /C 12345 /M "Select a configuration:  "

IF ERRORLEVEL 5 GOTO config_ip
IF ERRORLEVEL 4 GOTO settingcustom
IF ERRORLEVEL 3 GOTO settingdhcp
IF ERRORLEVEL 2 GOTO setting169
IF ERRORLEVEL 1 GOTO setting192

::-----------------------------------------------------
:setting192
netsh interface ipv4 set address name="!NetNameArray[%SetNumber%]!" static 192.168.168.10 255.255.0.0
ECHO Done
ECHO. 
PAUSE
GOTO menu
::-----------------------------------------------------
:setting169
netsh interface ipv4 set address name="!NetNameArray[%SetNumber%]!" static 169.254.188.10 255.255.0.0
ECHO Done
ECHO. 
PAUSE
GOTO menu
::-----------------------------------------------------
:settingdhcp
netsh interface ip set address "!NetNameArray[%SetNumber%]!" dhcp
ECHO Done
ECHO. 
PAUSE
GOTO menu
::-----------------------------------------------------
:settingcustom
ECHO.
ECHO what IPv4 do you want?:
SET /p IPv4con="(x.x.x.x)"
ECHO.
ECHO what Mask do you want?:
SET /p Maskcon="(x.x.x.x)"
netsh interface ipv4 set address name="!NetNameArray[%SetNumber%]!" static %IPv4con% %Maskcon%
ECHO !NetNameArray[%SetNumber%]!  IPv4=%IPv4con% Mask=%Maskcon%
ECHO.
ECHO Done
ECHO. 
PAUSE
GOTO :menu

::-----------------------------------------------------
:notsupport
ECHO Sorry, not supported yet
GOTO exit
