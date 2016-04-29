:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Verifying if Administrative Privileges are available...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)
:: Script Start here
ECHO off
CLS
ECHO.
TITLE regsvr32.exe Hack Firewall Enabler By G.Jose Malave
ECHO This tool will block regsvr32.exe for both 64 and 32 bit Systems
ECHO By: G.Jose Malave http://gjosemalave.com
ECHO.
ECHO. 
ECHO   ^|\      _,,,,--,,_
ECHO   /,`.-'`'    -,  \-;,
ECHO  ^|,4-  ) ),,__ ,\ (  ;;        Kitty Kat Aprooved!
ECHO '---''(.'--'  `-'`.)`'
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO **********************************************************************
ECHO **********************************************************************
ECHO **                                                                  **
ECHO **                      Choose your Destiny                         **
ECHO **                         1 Enable                                 **
ECHO **                         2 disable                                ** 
ECHO **                                                                  **
ECHO **********************************************************************
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (ECHO We will be removing the regsvr.exe in %systemroot%\SysWoW64\regsvr32.exe) ELSE (ECHO We will be removing the regsvr.exe in %systemroot%\System32\regsvr32.exe)
ECHO **********************************************************************
SET /P CHOICE= Default [1] Press any key for default or press 2 ^>
IF '%CHOICE%'== SET CHOICE=%CHOICE:~0,2% > nul
IF "%CHOICE%" == "1" GOTO :enable
IF "%CHOICE%" == "2" GOTO :disable

:: Checks processor Architecture and decices what rule to set
:enable
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (GOTO :enable64) ELSE (GOTO :enable32)
:disable
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (GOTO :disable64) ELSE (GOTO :disable32)

:enable32
@NETSH advfirewall firewall add rule name="Block Regsvr32" dir=out program="%systemroot%\System32\regsvr32.exe" action=Block enable=yes
ECHO Firewall Rule Block Regsvr32 blocked!
ECHO You can enable this and once Microsoft decides to patch you can remove it with this tool as well.
Pause >nul

:disable32
@NETSH advfirewall firewall delete rule name="Block Regsvr32"
ECHO Firewall Rule Block Regsvr32 Removed!
ECHO You can enable this and once Microsoft decides to patch you can remove it with this tool as well.
Pause >nul

:enable64
@NETSH advfirewall firewall add rule name="Block Regsvr64" dir=out program="%systemroot%\SysWoW64\regsvr32.exe" action=Block enable=yes
ECHO Firewall Rule Block Regsvr64 blocked!
ECHO You can enable this and once Microsoft decides to patch you can remove it with this tool as well.
Pause >nul

:disable64
@NETSH advfirewall firewall delete rule name="Block Regsvr64"
ECHO Firewall Rule Block Regsvr64 Removed!
ECHO You can enable this and once Microsoft decides to patch you can remove it with this tool as well.
Pause >nul
:: Script Ends here
