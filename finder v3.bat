
@echo off
COLOR ec
title Created by Himel Sarkar
net sess>nul 2>&1||(powershell saps '%0'-Verb RunAs&exit)


::#################################################################################################################################
:: Elevate this script                                                                                                            #
::#################################################################################################################################

(
    :: Check Admin rights and create VBS Script to elevate
    >nul fsutil dirty query %SYSTEMDRIVE% 2>&1 || (

        :: Very little red console
        mode con cols=80 lines=3 
        color cf

        :: Message
        title Please wait...
        echo.
        echo                         Requesting elevated shell...

        :: Create VBS script
        echo Set UAC = CreateObject^("Shell.Application"^)>"%TEMP%\elevate.vbs"
        echo UAC.ShellExecute "%~f0", "%TEMP%\elevate.vbs", "", "runas", 1 >>"%TEMP%\elevate.vbs"
        if exist "%TEMP%\elevate.vbs" start /b /wait >nul cscript /nologo "%TEMP%\elevate.vbs" 2>&1

        :: Delete elevation script if exist
        if exist "%TEMP%\elevate.vbs" >nul del /f "%TEMP%\elevate.vbs" 2>&1

        exit /b
    )    
)

pushd "%~dp0"


echo off
:begin


:::   ___________.__            .___            
:::   \_   _____/|__| ____    __| _/___________ 
:::    |    __)  |  |/    \  / __ |/ __ \_  __ \
:::    |     \   |  |   |  \/ /_/ \  ___/|  | \/
:::    \___  /   |__|___|  /\____ |\___  >__|   
:::        \/            \/      \/    \/       


for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo                   Created by Himel Sarkar (insta id: himelsarkar137)
echo                   github.com/Himel-Sarkar/









echo Select a task:
echo =============
echo -
echo 1 ) Option 1  (Full Network)
echo 2 ) Option 2  (ESTABLISHED)
echo 3 ) Option 3  (Show PID by Port)
echo 4 ) Option 4  (Task Killer)
echo 5 ) Option 5  (System Info)
echo 6 ) Option 6  (Run ProcessHacker)
echo 7 ) Option 7  (ip details)
echo 8 ) Option 8  (People Search)
echo 9 ) Option 9  (VPN)
echo 10) Option 10 (Chat)
echo 11) Option 11 (Pocket Tools)
echo 12) Option 12 (Spoof)
echo 13) Option 13 (search)
echo 14) Option 14 (vulnerabilities search)
echo 15) Option 15 (Fix Windows 10)
echo 16) Option 16 (Clean Windows 10)
echo 17) Option 17 (SEA Anti-MoSquIToes XP 2.0)
echo 18) Option 18 (Moskito Expert)
echo 19) Option 19 (Anti Mosquito.exe) [Inaudible for most of humans]
echo 20) Option 20 (My Favorite Song)
echo 21) Option 21 (Dig into recycle bin)
echo 22) Option 22 (ProcessExplorer)
echo 23) Option 23 (Process lister portable)
echo 24) Option 24 (SecurityTaskManager)
echo 25) Option 25 (hidden_process_finder_portable)
echo 26) Option 26 (connections_viewer_setup)
echo 27) Option 27 (TechToolStore)
echo 28) Option 28 (Ultimate Forensics Outflow)
echo 29) Option 29 (Dart Forensics Tool)
echo 30) Option 30(Exit)
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3"  goto op3
if "%op%"=="4"  goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
if "%op%"=="8" goto op8
if "%op%"=="9" goto op9
if "%op%"=="10" goto chat
if "%op%"=="11" goto op11
if "%op%"=="12" goto s-m-c
if "%op%"=="13" goto se
if "%op%"=="14" goto vu
if "%op%"=="15" goto fixwin
if "%op%"=="16" goto op16
if "%op%"=="17" goto op17
if "%op%"=="18" goto op18
if "%op%"=="19" goto op19
if "%op%"=="20" goto op20
if "%op%"=="21" goto rp3
if "%op%"=="22" goto prexp
if "%op%"=="23" goto prlistport
if "%op%"=="24" goto SecurityTaskManager_Setup
if "%op%"=="25" goto hidden_process_finder_portable
if "%op%"=="26" goto connections_viewer_setup
if "%op%"=="27" goto TechToolStore64
if "%op%"=="28" goto Win-UFO
if "%op%"=="29" goto dart
if "%op%"=="30" goto op30
echo Please Pick an option:
goto begin


:op1
netstat -a -b -n -o 
pause
cls
echo you picked option 1
goto begin

:op2
cls
echo See your Established connections (press CTRL + ALT for copying any column)
echo .
echo   Proto  Local Address          Foreign Address        State           PID
echo  ======  =============         ================        =====          =====
netstat -a -b -n -o | findstr ESTABLISHED

SET choice=
SET /p choice=Do u wanna do something more? [Y]/[N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
cls
echo you picked option 2

goto begin

:yes
ECHO Press CTRL + ALT for copying any column frome above list and past it on opened site's

start "" https://www.ip2location.com/demo/ && start "" https://www.bulkseotools.com/bulk-ip-to-location.php 

echo checking file structure...
if exist "%temp%\x64\ProcessHacker.exe" (
if exist "%temp%\x64\ProcessHacker.exe" (
cd \

cd %temp%

start x64\ProcessHacker.exe
wmic process list brief /every:30
taskkill /F /IM ProcessHacker.exe /T
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe

cls
echo you picked option 2
goto begin
goto ok
)
)

if not exist "%temp%\processhacker-2.39-bin.zip" (
if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)
if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)

if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -LO https://github.com/processhacker/processhacker/releases/download/v2.39/processhacker-2.39-bin.zip

setlocal
cd /d %~dp0
cd \
cd %temp%

set mypath=%cd%\processhacker-2.39-bin.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %temp%

start x64\ProcessHacker.exe
wmic process list brief /every:30
taskkill /F /IM ProcessHacker.exe /T
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
erase /Q *.*
cls
echo you picked option 2

goto begin

:ok
echo Install successful


:op3
cls
set /p port=Enter Your Port: 
echo Your port number is %port%
echo- 
netstat -abno | findstr :%port%
pause
cls

echo you picked option 3
goto begin

:op4
:beginn
cls

echo Select a task:
echo =============
echo -
echo 1) Option 1 (Kill port)
echo 2) Option 2 (Kill pid)
echo 3) Option 3 (Kill file)
echo 4) Option 4 (Know parent-location,processes,threads)
echo 4) Option 5 (Exit)
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="" goto op4

echo Please Pick an option:
goto beginn


:op1
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ESTABLISHED') do tasklist /FI "PID eq %%a"



echo -
set /p op=Do you want to kill?[y/n]:
if "%op%"=="y" goto opp1
if "%op%"=="n" goto opp2
if "%op%"=="" goto opp2
:opp1
echo::                                                                                                            #
echo::                                                                                                            #
echo   Proto  Local Address          Foreign Address        State           PID
echo   =====  =============          ===============        ======         ======
netstat -a -b -n -o | findstr ESTABLISHED
set /p op=Type port:
for /f "tokens=5" %%a in ('netstat -aon ^| find ":%op%" ^| find "ESTABLISHED"') do taskkill /f /pid %%a 
pause
cls
echo you picked option 1
goto op1

:opp2
pause
cls
echo you picked option 1
goto beginn







:op2
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ESTABLISHED') do tasklist /FI "PID eq %%a"
set /p pid=Enter Your PID: 
netstat -ano | findstr %pid% 
echo HandleCount  Name                                                                Priority  ProcessId  ThreadCount  WorkingSetSize
wmic process list brief |findstr %pid%


echo -
set /p op=Do you want to kill?[y/n]:
if "%op%"=="y" goto oppp1
if "%op%"=="n" goto oppp2
if "%op%"=="" goto oppp2


:oppp1
TASKKILL /F /PID %pid% /T
pause
cls
echo you picked option 2
goto op2
:oppp2
pause
cls
echo you picked option 2
goto beginn









:op3
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ESTABLISHED') do tasklist /FI "PID eq %%a"

echo::                                                                                                            #
echo::                                                                                                            #
echo   Proto  Local Address          Foreign Address        State           PID
echo   =====  =============          ===============        =====          =====
netstat -a -b -n -o | findstr ESTABLISHED




Color 0B
Echo Type Processor name to kill It (Without ".exe")
set /p ProcessorTokill=%=%  

:tasklist
tasklist|find /i "%ProcessorTokill%.exe">nul & if errorlevel 1 (
REM check if the process name is invalid 
Cls 
Title %ProcessorTokill% Not Found
Color 0A
echo %ProcessorTokill%
echo Error : The Processor above doesn't seem to be exist    

) else if %ProcessorTokill%==services (
REM check if the process name is services and doesn't kill it
Cls 
Color 0c
Title Permission denied 
echo "%ProcessorTokill%.exe"
echo Error : You can't kill the Processor above 

) else (
REM if the process name is valid and not services
Cls 
Title %ProcessorTokill% Found
Color 0e
echo %ProcessorTokill% Found
ping localhost -n 2 -w 1000>nul
echo Killing %ProcessorTokill% ...
taskkill /f /im %ProcessorTokill%.exe /t>nul
echo %ProcessorTokill% Killed...
)





REM If else if Template
REM if thing1 (
REM Command here 2 ! 
REM ) else if thing2 (
REM command here 2 !
REM ) else (
REM command here 3 !
REM )




cls
echo you picked option 3
goto beginn


:op4
cls


 
setlocal



set /p Space=Enter Your executable file name: 
echo ......................           ......................
echo  Multiple process path           Parent PID: Child PID
echo ......................           ......................

wmic process get ExecutablePath,ParentProcessId,ProcessId > wmic.txt
for /F "tokens=1-3" %%a in ('type wmic.txt') do (
   if /I "%%a" equ "%ComSpec%" (
      Call ECHO %%a - %%Space%%%%b:%%c
      CAll Set "Space=%%Space%%     "
      set "Parent[%%c]=%%b"
      set "This=%%c"
   )
)

set X=0
:nextParent
   set /A X+=1
   call set "This=%%Parent[%This%]%%"
if defined Parent[%This%] goto nextParent
echo Executed under %X% processes
tasklist /FI "ImageName eq %Space%" /v /fo List
pause


goto beginn




=============




:op5
cls
:: This batch file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO NETWORK ARP
ECHO ============================
arp -a

echo =======================================More============================================
echo %DATE%
echo displays all the drivers installed and their properties
DRIVERQUERY
echo ====================================================================================================
echo Displays the label of a drive or volume and is also is used for adding, setting or removing a disk label.
LABEL
====================================================================================================
echo  Display the users
NET users
echo ...............................................................
echo Display the net accounts
net accounts
echo ...............................................................
echo ...............................................................
echo Display the net computer
net computer
echo ...............................................................
echo ...............................................................
echo Display the net share
net share
echo ...............................................................
echo ...............................................................
echo Display the net view
net view
echo ...............................................................

echo ...............................................................
echo Display the net config
net config
echo ...............................................................
echo ...............................................................
echo Display the net continue
net continue
echo ...............................................................
echo ...............................................................
echo Display the net file
net file
echo ...............................................................
echo ...............................................................
echo Display the net group
net group
echo ...............................................................
echo ...............................................................
echo Display the net LOCALGROUP
net LOCALGROUP
echo ...............................................................
echo ...............................................................
echo Display the net pause
net pause
echo ...............................................................
echo ...............................................................
echo Display the net pause
net pause
echo ...............................................................

echo ...............................................................
echo Display the net session
net session
echo ...............................................................
echo ...............................................................
echo Display the net start
net start
echo ...............................................................
echo ...............................................................
echo Display the net statistics
net statistics
echo ...............................................................
echo ...............................................................
echo Display the net time
net time
echo ...............................................................
echo ...............................................................
echo Display the net use
net use
echo ...............................................................
echo ...............................................................
echo Get a very detailed list of configuration for each printer installed on a system:
wmic printer list full
echo ...............................................................
echo ...............................................................
echo Get what services are installed on a computer and find out which ones are active:
sc query state= all
echo ...............................................................
echo Get the results of a security audit is:
auditpol /get /category:*
echo ...............................................................
echo ...............................................................
echo Get see the results of a security audit is:
auditpol /get /category:*
echo See the same results in CSV format
auditpol /get /category:* /r
rem https://searchenterprisedesktop.techtarget.com/photostory/4500257331/Top-Windows-command-line-commands/5/Query-the-status-of-services-with-sc-query-state-all
echo ...............................................................
echo ...............................................................
echo Get all the connected pc's firewall status in your network is:
FOR /L %%i IN (1,1,254) DO netsh -r 192.168.1.%%i advfirewall show allprofiles
echo ...............................................................


PAUSE

cls

echo you picked option 5
goto begin

===========





:op6
echo checking file structure...
if exist "%temp%\x64\ProcessHacker.exe" (
if exist "%temp%\x64\ProcessHacker.exe" (
cd \

cd %temp%

start x64\ProcessHacker.exe
wmic process list brief /every:30
taskkill /F /IM ProcessHacker.exe /T

cls
echo you picked option 6
goto begin
goto ok
)
)

if not exist "%temp%\processhacker-2.39-bin.zip" (
if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)
if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)

if not exist "%temp%\processhacker-2.39-bin.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -LO https://github.com/processhacker/processhacker/releases/download/v2.39/processhacker-2.39-bin.zip

setlocal
cd /d %~dp0
cd \
cd %temp%

set mypath=%cd%\processhacker-2.39-bin.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %temp%

start x64\ProcessHacker.exe
wmic process list brief /every:30
taskkill /F /IM ProcessHacker.exe /T
erase /Q *.*
cls
echo you picked option 6

goto begin

:ok
echo Install successful


:op7

cls
SET /P ip=Enter your target IP: 




title All Shortcuts
echo Welcome,
echo Choose an option from a below list.
echo 1. geotraceroute
echo 2. abuseipdb
echo 3. yahoo ip check
echo 4. yandex ip check
echo 5. duckduckgo
echo 6. iplocation
echo 7. zoomeye
echo 8. spyse
echo 9. shodan
echo 10. greynoise
echo 11. robtex
echo 12. scamadviser
echo 13. hackertarget
echo 14. pentest-tools
echo 15. dnsdumpster (Manually)[osint]
echo 16. immuniweb (Manually)
echo 17. centralops(Manually)[osint]
echo 18. ip8.com (Zip code check)
echo 19. bgpview.io (Border Gateway Protoco,Related BGP Prefixes, Prefix ALLOCATION STATUS check) 
echo 20. censys.io 
echo 21. lg.he.net (Hurricane Electric's Network Looking Glass)
echo 22. Bulk ()  
echo 23. Kill all browser
echo 24. Exit


SET /P choice=Enter your choice:

IF "%choice%"=="" cls GOTO st   
if %choice%==1 (
start "" http://geotraceroute.com/new.php?host=%ip%
)
if %choice%==2 (
start "" http://www.abuseipdb.com/check/%ip%
)
if %choice%==3 (
start "" http://search.yahoo.com/search?p=%ip%
)
if %choice%==4 (
start "" https://yandex.com/search/?text=%ip%
)
if %choice%==5 (
start "" https://duckduckgo.com/?q=%ip%
)
if %choice%==6 (
start "" http://www.iplocation.net/?query=%ip%
)
if %choice%==7 (
start"" http://www.zoomeye.org/searchResult?q=%ip%
)
if %choice%==8 (
start "" http://spyse.com/target/ip/%ip%
)
if %choice%==9 (
start "" http://www.shodan.io/host/%ip%
)
if %choice%==10 (
start "" http://viz.greynoise.io/ip/%ip%
)
if %choice%==11 (
start "" https://www.robtex.com/ip-lookup/%ip%
)
if %choice%==12 (
start "" http://www.scamadviser.com/check-website/%ip%
)
if %choice%==13 (
start "" http://hackertarget.com/reverse-ip-lookup/%ip%
)
if %choice%==14 (
start "" http://pentest-tools.com/website-vulnerability-scanning/website-scanner?url=%ip%
)
if %choice%==15 (
start "" https://dnsdumpster.com/?query=%ip%
)
if %choice%==16 (
start "" https://www.immuniweb.com/ssl/?q=%ip%
)
if %choice%==17 (
start "" https://centralops.net/co/?q=%ip%
)
if %choice%==18 (
start "" https://ip8.com/?url=%ip%
)
if %choice%==19 (
start "" https://bgpview.io/ip/%ip%
)
if %choice%==20 (
start "" http://censys.io/ipv4?q=%ip%
)
if %choice%==21 (
start "" http://lg.he.net/#
)
if %choice%==22 (

start http://iknowwhatyoudownload.com/en/peer/?ip=%ip% & start "" http://geotraceroute.com/new.php?host=%ip% & start "" http://www.abuseipdb.com/check/%ip% & start "" http://search.yahoo.com/search?p=%ip% & start "" https://yandex.com/search/?text=%ip% & start "" https://duckduckgo.com/?q=%ip% & start "" http://www.iplocation.net/?query=%ip% & start"" http://www.zoomeye.org/searchResult?q=%ip% & start "" http://spyse.com/target/ip/%ip% & start "" http://www.shodan.io/host/%ip% & start "" http://viz.greynoise.io/ip/%ip% & start "" https://www.robtex.com/ip-lookup/%ip% & start "" http://www.scamadviser.com/check-website/%ip% & start "" http://hackertarget.com/reverse-ip-lookup/%ip% & start "" http://pentest-tools.com/website-vulnerability-scanning/website-scanner?url=%ip% & start "" https://ip8.com/?url=%ip% & start "" https://bgpview.io/ip/%ip% & start "" http://censys.io/ipv4?q=%ip%

)
if %choice%==23 (
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
cls
goto op7
) 
if %choice%==24 (
cls
goto begin
)
if %choice%=="" (
cls
goto begin
)



cls
echo you picked option 7
pause
goto op7

:op8
start "" https://pimeyes.com/
start "" http://www.pictriev.com/
start "" https://www.flickr.com/map
start "" https://www.csc2.ncsu.edu/faculty/healey/tweet_viz/tweet_app/ 
start "" https://twitter.com/search-advanced
start "" http://socialmention.com/search?q= 
start "" https://brandmentions.com/socialmention/ 
start "" https://www.social-searcher.com/google-social-search/ 
start "" http://usersearch.org/

SET choice=
SET /p choice=Would u like to close your all browser? [N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
ECHO Do all of the no things here!
cls
echo you picked option 8
goto begin


:yes
ECHO Do all of the yes things here!

taskkill /IM "ProcessHacker.exe" /F
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe


cls
echo you picked option 8
goto begin






:op9
echo Copy past pptp vpn from vpnbook.com to your vpn sitting 
start ms-settings:network-vpn
start "" https://www.vpnbook.com/freevpn

pause
cls
echo you picked option 9

goto begin



:chat
cls
echo ========================
echo # Dig into recycle bin # 
echo ========================
echo Select a task(any error press CTRL+c , y , Enter):
echo =============
echo -
echo 1) Option 1 (network chat)
echo 2) Option 2 (Online chat)
echo 3) Option 3 (Self destruct)[3]
echo 4) Option 4 (Exit)
echo -
set /p op=Type option:
if "%op%"=="1" goto ch11
if "%op%"=="2" goto ch22
if "%op%"=="3" goto self
if "%op%"=="4" goto ch44

echo Please Pick an option:
goto beginnn


:ch11


title Network Chat Room
setlocal EnableDelayedExpansion

rem [Settings]
set "adminKey=z "
set "msgPathDefault=BatchScript_Data\NetChatRoom"
set "msgFileName=chatRoom.txt"

set "msgKeyCLS=---CLS"
set "msgKeyREN=---REN"
set "msgKeyDEL=---DEL"
set "msgKeyXIT=---XIT"
rem [/Settings]

set "userNickMaxLength=12"
set "displayLines=20"

if /i "%1" == "START" if not "%2" == "" goto %2 %3 %4 %5 %6 %7 %8 %9
goto scriptMain

:errorUnexpected
echo.
echo An error happened.
echo Network Chat Room will exit
pause
exit

:scriptMain
set "msgPath=?"
mode cols=80

:beepMenu
set "bellSound=?"
cls
echo                                NETWORK CHAT ROOM
echo ================================================================================
echo                                                ===============================
echo                                                ^|    Made by Himel Sarkar     ^|
echo                                                ^|                             ^|
echo                                                =============================\^|
echo  ===============================
echo  ^|      Enable beep sound?     ^|
echo  ^|/=============================
echo.
echo ================================================================================
set /p "userInput=Reply | Y/N? "
if /i "%userInput%" == "Y" set "bellSound="
if /i "%userInput%" == "N" set "bellSound="
if not "%bellSound%" == "?" goto userNickIn
echo.
echo Invalid choice
pause
goto beepMenu

:userNickIn
cls
set "userNick="
if defined bellSound (
    echo Beep sound         : Enabled
) else echo Beep sound         : Disabled
echo.
echo Input your username:
echo.
set /p "userNick="
if defined userNick if "!userNick:~%userNickMaxLength%!" == "" (
    set "userNick=%userNick%                "
    set "userNick=!userNick:~0,%userNickMaxLength%!"
    goto msgPathIn
)
echo.
echo Invalid username
echo Username must be 1 - %userNickMaxLength% characters long
pause
goto userNickIn

:msgPathIn
set "userLvl=1"
cls
if defined bellSound (
    echo Beep sound         : Enabled
) else echo Beep sound         : Disabled
echo.
echo Your username      : %userNick%
echo.
echo Previous chat room :
echo.%msgPath%
echo.
echo Type nothing to use previous chat room if used before
echo Use default        ?
echo Change username    :
echo.
echo Input your chat room address:
echo.
set /p "msgPath="
:msgPathCheck
if not defined msgPath goto msgPathIn
set "fileA="
set "fileN="
for %%f in (%msgPath%) do (
    set "fileA=%%~af"   Attributes
    set "fileN=%%~nf"   Name
    set "msgPath=%%~ff" Full Path
)
if "%fileN%" == ":" goto userNickIn
if "%msgPath%" == "?" (
    set "msgPath=%msgPathDefault%"
    goto msgPathCheck
)
if not defined fileA goto msgFileNotExist
if /i not "%fileA:~0,1%" == "D" goto msgPathInvalid
if not exist "%msgPath%" goto msgFileNotExist
if not exist "%msgPath%\chatHistory.txt" goto msgFileNotExist
goto msgChatModeIn

:msgPathInvalid
echo.
echo Invalid chat room address
echo You input a file address, not a folder address.
echo.
pause
goto msgPathIn

:msgFileNotExist
cls
echo Chat room address:
echo.
echo %msgPath%
echo.
echo The message file or folder did not exist
echo Create the message file and folder?
set /p "userInput=Y/N? "
if /i "%userInput%" == "Y" goto msgFileCreate
if /i "%userInput%" == "N" goto msgPathIn
echo.
echo Invalid choice
pause
goto msgFileNotExist

:msgFileCreate
cls
echo Creating chat room...
if not exist "%msgPath%" md "%msgPath%"
@echo Created on %date% %time% > "%msgPath%\chatHistory.txt"
@echo -------------------------------------------------------------------------------- >> "%msgPath%\chatHistory.txt"
if not exist "%msgPath%\chatHistory.txt" goto msgFileCreateError
set "userLvl=2"
echo Chat room created
pause
goto msgChatModeIn

:msgFileCreateError
echo.
echo Script cannot create the chat room...
echo The chat room address is not accessible,
echo write-protected or access is denied.
pause
goto msgPathIn

:msgChatModeIn
cls
echo Chat Room address  :
echo.
echo %msgPath%
echo.
echo 1. Join chat room
echo 2. View chat room with auto update
echo 3. View full chat room without auto update
echo.
echo 0. Back
echo.
echo Choose what do you want to do:
set /p "userInput="
if "%userInput%" == "0" goto msgPathIn
if "%userInput%" == "1" goto msgScreenModeIn
if "%userInput%" == "2" goto msgScreenAuto
if "%userInput%" == "3" goto msgScreenFull
echo.
echo Invalid choice
pause
goto msgChatModeIn

:msgScreenModeIn
cls
if "%userLvl%" == "2" (
    echo Default is 1                                                                  `
) else echo Default is 1
echo.
echo 1. Split chat screen
echo 2. All in one screen
echo.
echo 0. Back
echo.
echo Choose your chat screen:
set /p "msgScreenSplit="
if "%msgScreenSplit%" == "0" goto msgChatModeIn
if "%msgScreenSplit%" == "2" set "msgScreenSplit=0"
if "%msgScreenSplit%" == "0" goto msgCmdList
if "%msgScreenSplit%" == "1" goto msgCmdList
if "%msgScreenSplit%" == "%adminKey%" set "userLvl=2"
echo.
echo Invalid choice
pause
goto msgScreenModeIn

:msgCmdList
cls
title Network Chat Room
echo Instructions
echo.
echo Action                 Command
echo.
if "%msgScreenSplit%" == "0" (
echo Refresh message        [Enter nothing]
)
echo Exit chat room         %msgKeyXIT%
if not "%userLvl%" == "2" goto msgCmdEnd
echo Clear chat room        %msgKeyCLS%
echo Rename chat room       %msgKeyREN%
echo Delete chat room       %msgKeyDEL%
:msgCmdEnd
echo.
pause
if "%msgScreenSplit%" == "0" goto msgScreenCombinedSetup
if "%msgScreenSplit%" == "1" goto msgScreenSplitSetup
goto errorUnexpected

:msgScreenAuto
set "msgLines=0"
for /f %%n in ('type "%msgPath%\chatHistory.txt" ^| find "" /v /c') do set "msgLines=%%n"
set /a msgLineStart=%msgLines%-%displayLines%
if %msgLineStart% LSS 0 set "msgLineStart=0"
if not "%msgLines%" == "%msgLinesP%" (
    title Network Chat Room Receiver - [%date% %time%] New Message
    echo.%bellSound%
) else title Network Chat Room Receiver - [%date% %time%]
cls
more +%msgLineStart% < "%msgPath%\chatHistory.txt" 
set "msgLinesP=%msgLines%"
timeout /t 1 > nul 
if exist "%msgPath%\chatHistory.txt" goto msgScreenAuto
cls 
title Network Chat Room
echo Chat Room: 
echo.
echo %msgPath%
echo. 
echo ERROR: Cannot find chat room
echo Maybe someone deleted or renamed it 
pause 
exit


:msgScreenFull
for %%f in ("%msgPath%\chatHistory.txt") do set "msgSize=%%~zf"
if not "%msgSize%" == "%msgSizeP%" (
    title Network Chat Room [%date% %time%] New Message
    echo.%bellSound%
) else title Network Chat Room - [%date% %time%]
cls
type "%msgPath%\chatHistory.txt" 
set "msgSizeP=%msgSize%"
echo ================================================================================
echo 0. Back
echo.
echo Press enter to refresh
echo.
set /p "userInput="
if "%userInput%" == "0" goto msgPathIn
if not exist "%msgPath%\chatHistory.txt" goto msgDisconnected
goto msgScreenFull

:msgScreenSplitSetup
start "" "%~f0" START msgScreenAuto
title Network Chat Room - Chat as %userNick%
:msgScreenSplit
cls
echo Action                 Command
echo Exit chat room         %msgKeyXIT%
if "%userLvl%" == "2" (
echo Clear chat room        %msgKeyCLS%
echo Rename chat room       %msgKeyREN%
echo Delete chat room       %msgKeyDEL%
)
set "userInput="
echo ================================================================================
set /p "userInput="
goto msgProcess

:msgScreenCombinedSetup
:msgScreenCombined
for %%f in ("%msgPath%\chatHistory.txt") do set "msgSize=%%~zf"
if not "%msgSize%" == "%msgSizeP%" (
    title Network Chat Room [%date% %time%] New Message
    echo.%bellSound%
) else title Network Chat Room - [%date% %time%]
cls
type "%msgPath%\chatHistory.txt" 
set "msgSizeP=%msgSize%"
set "userInput="
echo ================================================================================
set /p "userInput=[  :  ] %userNick%: "
goto msgProcess

:msgProcess
rem Filter for empty message
if not defined userInput goto msgBack
set "msgFiltered=%userInput: =%"
if not defined msgFiltered goto msgBack

rem Filter for anti-spam
if "%time:~0,-3%" == "%msgTime%" (
    if "%msgCount%" == "2" (
        echo.
        echo Slow down, you are sending messages too fast...
        timeout /t 1 /nobreak > nul
        goto msgBack
    )
) else (
    set "msgTime=%time:~0,-3%"
    set "msgCount=0"
)
set /a msgCount+=1

if not exist "%msgPath%\chatHistory.txt" goto msgDisconnected
if /i "%msgFiltered%" == "%msgKeyXIT%" goto msgExit
if "%userLvl%" == "2" (
    if /i "%msgFiltered%" == "%msgKeyCLS%" goto msgCls
    if /i "%msgFiltered%" == "%msgKeyREN%" goto msgRen
    if /i "%msgFiltered%" == "%msgKeyDEL%" goto msgDel
)
rem Adjust write output to prevent display error
call :GetLength userInput
for /l %%n in (0,57,%return%) do (
    echo [%time:~0,-6%] %userNick%: !userInput:~0,57!
    set "userInput=!userInput:~57!"
) >> "%msgPath%\chatHistory.txt"
goto msgBack

:msgBack
if not exist "%msgPath%\chatHistory.txt" goto msgDisconnected
if "%msgScreenSplit%" == "0" goto msgScreenCombined
if "%msgScreenSplit%" == "1" goto msgScreenSplit
goto errorUnexpected

:msgDisconnected
cls 
title Network Chat Room
echo Chat Room: 
echo.
echo %msgPath%
echo. 
echo ERROR: Cannot find chat room
echo Maybe someone deleted or renamed it 
pause 
goto msgPathIn

:msgExit
cls
echo Chat Room address  :
echo.
echo %msgPath%
echo.
echo Are you sure you want to exit chat room?
set /p "userInput=Y/N? "
if /i not "%userInput%" == "Y" goto msgBack
goto msgPathIn

:msgCls
cls
echo Chat Room address  :
echo.
echo %msgPath%
echo.
echo Are you sure you want to clear chat room messages?
set /p "userInput=Y/N? "
if /i not "%userInput%" == "Y" goto msgBack
cls
echo Clearing chat room...
@echo Created on %date% %time% > "%msgPath%\chatHistory.txt"
@echo -------------------------------------------------------------------------------- >> "%msgPath%\chatHistory.txt"
echo Done.
pause
goto msgBack


:msgRen
cls
echo Chat Room address  :
echo.
echo %msgPath%
echo.
echo Input new name for chat room:
set /p "userInput="
echo.
echo This would disconnect everyone in chat room
echo Are you sure you want to rename chat room?
set /p "userInput=Y/N? "
if /i not "%userInput%" == "Y" goto msgBack
echo.
echo Function not made yet...
pause
goto msgBack

:msgDel
cls
echo Chat Room address  :
echo.
echo %msgPath%
echo.
echo This would disconnect everyone and delete chat room messages
echo Are you sure you want to delete chat room?
set /p "userInput=Y/N? "
if /i not "%userInput%" == "Y" goto msgBack
cls
echo Deleting chat room...
del "%msgPath%" /f /q
echo Done.
pause
goto msgBack

rem Functions

:GetLength [Variable Name]
set "return=0"
if not defined %1 goto :EOF
for %%n in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
    set /a return+=%%n
    for %%l in (!return!) do if "!%1:~%%l,1!" == "" set /a return-=%%n
)
set /a return+=1
goto :EOF

:ch22

SET /P name=Enter your team name: 
 
SET url=https://hack.chat/?%name%
start "" %url%
cd\
cd %appdata%
cd..
cd..
cd Desktop
(
  echo Remember we didn't save you "Nickname"
  echo Your link is:%url%
  echo Your team name is:%name%
  
  
  
) > "Mr Bangladesh-%random%.txt"

pause
cls
echo you picked option 9

goto chat


:self
cls
title All Shortcuts
echo Welcome to self destruction services, [Note,File,Email]
echo Choose an option from a below list.
echo 1. Privatty 
echo 2. Securesha
echo 3. Temp
echo 4. Safenote
echo 5. Self-destructing-email
echo 6. Close all browser
echo 7. Exit


 
echo enter your choice
 
set /p choice=
 
if %choice%==1 (
start "" http://privatty.com/en/
)
if %choice%==2 (
start "" http://securesha.re/
)
if %choice%==3 (
start "" http://temp.pm/
)
if %choice%==4 (
start "" http://safenote.co/
)
if %choice%==5 (
start http://www.self-destructing-email.com/
)

if %choice%==6 (
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
cls
goto self:
)
if %choice%==7 (
cls
goto chat
)




 cls
goto self
exit

:ch44
cls
echo you picked option 4
goto begin








:op11


title Pocket Tools
setlocal EnableDelayedExpansion

set "fileAddress=/\"
if [%1] == [] goto loadTools
if exist %1 set fileAddress=%1& rem Ends Here
if exist %1 (
    call :fileGetInfo fileAddress
) else if not [%2] == [] (
    if /i [%1] == [START] goto %2
    if /i [%1] == [CALL] (
        call :%2 %3 %4 %5 %6 %7 %8 %9
        goto begin
    )
)
goto loadTools

rem Example
start "" "%~f0" start labelName

:AboutScript
cls

pause
goto mainMenu

:loadTools
cd /d "%~dp0"
cls
echo Loading menu list...
echo.

set "categoryNum=0"
set "categoryList="
for %%c in (
    Computer
    File
    Network
    Developer
) do (
    set /a categoryNum+=1
    set "categoryList=!categoryList! %%c"
    set "%%cFunctionNum=0"
    set "%%cFunctionList="
)
set "AllFunctionNum=0"
set "AllFunctionList="
set "OtherFunctionNum=0"
set "OtherFunctionList="
for %%f in (
    1:Shutdown
    1:Restart
    1:Hibernate
    1:Log_Off
    1:Lock_Workstation
    1:Task_Manager
    1:Registry_Editor
    1:Disk_Write_Protect
    1:Abort_Shutdown
    2:View_File_Informations
    2:Search_Files
    2:Search_0-Byte_Files
    2:Organize_Files
    2:Change_Attribute
    2:List_Folder_Name
    2:Folder_Comparator_-_Name
    2:Folder_Comparator_-_Content
    D:View_Network_Informations
    D:IPv4_Scanner
    3:Ping_Test
    4:View_System_Environment_Variables
    4:Application_Timer
    4:Parameter_Execute
    4:Locate_This_File
    4:Application_Terminator
    4:Process_Terminator
    4:Emergency
    C:Command_Prompt
    D:Edit_with_Notepad_Menu
    D:Others
) do (
    for /f "tokens=1-2 delims=:" %%a in ("%%f") do (
        if not "%%a" == "D" (
            set /a AllFunctionNum+=1
            set "AllFunctionList=!AllFunctionList! %%b"
            set "categoryNum=0"
            set "haveCategory=false"
            for %%l in (%categoryList%) do (
                set /a categoryNum+=1
                if "%%a" == "0" (
                    set /a %%lFunctionNum+=1
                    set "%%lFunctionList=!%%lFunctionList! %%b"
                    set "haveCategory=true"
                )
                if "%%a" == "!categoryNum!" (
                    set /a %%lFunctionNum+=1
                    set "%%lFunctionList=!%%lFunctionList! %%b"
                    set "haveCategory=true"
                )
            )
            if "!haveCategory!" == "false" (
                set /a OtherFunctionNum+=1
                set "OtherFunctionList=!OtherFunctionList! %%b"
            )
        )
    )
)
set "categoryList=%categoryList% Other All"

:mainMenu
cls
title Pocket Tools
set "menuNum=0"
for %%c in (%categoryList%) do (
    set /a menuNum+=1
    set "menuNum=  !menuNum!"
    set "menuDisplay=%%c"
    echo !menuNum:~-2,2!. !menuDisplay:_= ! Tools [!%%cFunctionNum!]
)
echo.
echo S. Search tools
echo A. About
echo 0. Exit
echo.
echo Which tool do you want to use?
set /p "userInput="
set "userInput=%userInput: =_%"
if "%userInput%" == "0" exit
if /i "%userInput%" == "S" goto functionSearch
if /i "%userInput%" == "A" goto AboutScript
set "menuNum=0"
set "selectedCategory="
for %%c in (%categoryList%) do (
    set /a menuNum+=1
    if "%userInput%" == "!menuNum!" set "selectedCategory=%%c"
    if /i "%userInput%" == "%%c" set "selectedCategory=%%c"
)
if defined selectedCategory goto functionMenu
echo.
echo Invalid choice
pause
goto mainMenu

:functionMenu
cls
set "menuNum=0"
for %%f in (!%selectedCategory%FunctionList!) do (
    set /a menuNum+=1
    set "menuNum=  !menuNum!"
    set "menuDisplay=%%f"
    echo !menuNum:~-2,2!. !menuDisplay:_= !
)
echo.
echo 0. Back
echo.
echo Which tool do you want to use?
set /p "userInput="
set "userInput=%userInput: =_%"
if "%userInput%" == "0" goto mainMenu
set "menuNum=0"
set "selectedFunction="
for %%c in (!%selectedCategory%FunctionList!) do (
    set /a menuNum+=1
    if "%userInput%" == "!menuNum!" set "selectedFunction=%%c"
    if /i "%userInput%" == "%%c" set "selectedFunction=%%c"
)
if defined selectedFunction goto functionStart
echo.
echo Invalid choice
pause
goto functionMenu

:functionSearch
cls
echo 0. Back
echo.
echo Input search keyword:
set /p "userInput="
if "%userInput%" == "0" goto mainMenu
set "searchKeyword=%userInput: =_%"
:searchResult
cls
echo Search Keyword : %searchKeyword%
echo Search results :
echo.
set "SearchFunctionNum=0"
set "SearchFunctionList="
for %%f in (%AllFunctionList%) do (
    set "tempVar1=%%f"
    set "tempVar1=!tempVar1:%searchKeyword%=!"
    if not "!tempVar1!" == "%%f" (
        set /a SearchFunctionNum+=1
        set "SearchFunctionList=!SearchFunctionList! %%f"
        set "SearchFunctionNum=  !SearchFunctionNum!"
        set "menuDisplay=%%f"
        echo !SearchFunctionNum:~-2,2!. !menuDisplay:_= !
    )
)
echo.
echo 0. Back
echo.
echo Which tool do you want to use?
set /p "userInput="
set "userInput=%userInput: =_%"
if "%userInput%" == "0" goto mainMenu
set "menuNum=0"
set "selectedFunction="
for %%c in (!searchFunctionList!) do (
    set /a menuNum+=1
    if "%userInput%" == "!menuNum!" set "selectedFunction=%%c"
    if /i "%userInput%" == "%%c" set "selectedFunction=%%c"
)
if defined selectedFunction goto functionStart
echo.
echo Invalid choice
pause
goto searchResult

:functionStart
cls
echo =============================== START OF FUNCTION ==============================
title Pocket Tools - %selectedFunction:_= %
call :%selectedFunction%
echo ================================ END OF FUNCTION ===============================
title Pocket Tools
echo.
pause
goto mainMenu

rem Function / Tools ==========================================================

:Command_Prompt
cls
echo Script version of Command Prompt.
echo Be careful with special characters
echo.
:Command_Prompt_In
set /p "userInput=cmd> "
if /i "!userInput:~0,4!" == "exit" goto begin
%userInput%
goto Command_Prompt_In

:Application_Timer
call :pathIn file Y
cls
echo Input process name :
set /p "processName="
:Application_Timer_TimerIn
cls
echo Input timer (in seconds)   :
set /p "timer="
set /a timer+=0
if %timer% LSS 0 goto Application_Timer_TimerIn
if %timer% GTR 99999 goto Application_Timer_TimerIn
cls
echo Process name       : %processName%
echo Timer (seconds)    : %timer%
echo.
echo Press any key to start application timer
pause > nul

if exist %fileAddress% start "" %fileAddress%

set "time1=%time%"
cls
echo File Address       :
echo %fileAddress%
echo.
echo Process name       : %processName%
echo Timer (seconds)    : %timer%
echo.
echo Start time         : %time1%
echo.
timeout /t 60 /nobreak
taskkill /im %processName% /f /t
goto begin

:View_Network_Informations
ipconfig /all
goto begin

:Ping_Test
set "networkAddress=8.8.8.8"
cls
echo Z. Back to menu
echo.
echo Input network address:
echo.
set /p "networkAddress="
if /i "%networkAddress%" == "Z" goto begin
:Ping_Test_IntervalIn
set "pingInterval=1"
cls
echo.%networkAddress%
echo ================================================================================
echo Z. Change network address
echo.
echo Input ping interval:
set /p "pingInterval="
if /i "%pingInterval%" == "Z" goto Ping_Test
if %pingInterval% LSS 0 goto Ping_Test_IntervalIn
if %pingInterval% GTR 60 (
    echo.
    echo Invalid input
    echo Interval should be from 0 to 60
    pause
    goto Ping_Test_IntervalIn
)
cls
echo.%networkAddress%
echo ================================================================================
echo Testing connection...

set  "symbolOnline=:"
set "symbolOffline=."
set "logPerMin=120"
set "pingTimeout=500"
set "pingTextMax=10"
set /a pingInterval+=0
if not "%pingInterval%" == "0" (
    set /a pingTimeout=725 + %pingInterval% * 25
    set /a logPerMin= 60 / %pingInterval%
)
set "timesLog="
for /l %%n in (1,1,%logPerMin%) do set "timesLog=-0!timesLog!"
set "connectionStats=   "
:Ping_Test_Update
for /l %%n in (1,1,%pingTextMax%) do set "pingText%%n="
set "tempVar1=1"
set "connectionPing="
for /f "tokens=* usebackq" %%o in (`ping -n 1 -w %pingTimeout% %networkAddress%`) do (
    set "pingText!tempVar1!=%%o"
    if "!tempVar1!" == "6" for /f "tokens=4 delims==" %%a in ("%%o") do set "connectionPing=%%a"
    set /a tempVar1+=1
)
if not "%pingInterval%" == "0" timeout /t %pingInterval% /nobreak > nul
if defined connectionPing (
    set "connectionPing=!connectionPing:~1!"
    title Ping Tests - [%time%] Connected
    set "timesLog=%timesLog%+1"
    set "connectionStats=%symbolOnline%%connectionStats%"
) else (
    set "connectionPing=-"
    if "%pingText2%" == "Request timed out." set "connectionPing= ^> %pingTimeout%ms"
    title Ping Tests - [%time%] Disconnected
     set "timesLog=%timesLog%+0"
     set "connectionStats=%symbolOffline%%connectionStats%"
)
set "timesLog=%timesLog:~2%"
set /a timesOnline=%timesLog%
set /a timesOnlinePercentage=%timesOnline% * 100 / %logPerMin%
set "connectionStats=%connectionStats:~0,79%"
set "connectionPing=        %connectionPing%"
set "connectionPing=%connectionPing:~-8,8%"
set "connectionComment=Excellent"
if %timesOnlinePercentage% LSS 95 set "connectionComment=Good"
if %timesOnlinePercentage% LSS 85 set "connectionComment=Fair"
if %timesOnlinePercentage% LSS 75 set "connectionComment=Poor"
if %timesOnlinePercentage% LSS 50 set "connectionComment=Very poor"
if %timesOnlinePercentage% LSS 3  set "connectionComment=No"
cls
echo %networkAddress%
echo ================================================================================
if "%timesLog:~0,2%" == "-0" (
    echo Online times in the last %logPerMin% ping tests:   ---
    set "connectionComment=Testing"
) else echo Online times in the last %logPerMin% ping tests: %timesOnline% / %logPerMin% [%timesOnlinePercentage%%%]
echo.
echo %connectionComment% network connection
echo.
echo Status ---^> Older   ^| Ping : %connectionPing%
echo ================================================================================
echo.%connectionStats%
echo ================================================================================
for /l %%n in (1,1,%pingTextMax%) do echo.!pingText%%n!
goto Ping_Test_Update

:Process_Terminator
cls
tasklist
echo.
echo Enter a process that you want to terminate :
set /p "processName="

set "processNum=-2"
for /f "tokens=*" %%o in ('tasklist /fi "imagename eq %processName%"') do (
    echo.%%o
    set /a processNum+=1
)
if "%processNum%" == "-1" set "processNum=0"
echo.
:Process_Terminator_Prompt
echo Found %processNum% processes with name "%processName%"
if "%processNum%" == "0" goto begin
echo.
echo Do you want to terminate processes above?
set /p "userInput=Y/N? "
if /i "%userInput%" == "N" goto begin
if /i not "%userInput%" == "Y" goto Process_Terminator_Prompt
echo.
echo Terminating process...
taskkill /fi "imagename eq %processName%" /im "%processName%" /f /t > nul
echo.
echo Done
goto begin

:Folder_Comparator_-_Name
call :pathIn folder
set "folder1=%fileF%"
call :pathIn folder
set "folder2=%fileF%"
cls
echo Folder Address 1   :
echo %folder1%
echo.
echo Folder Address 2   :
echo %folder2%
echo.
echo Compare file names between folders
echo.
echo Press any key to compare the folders
pause > nul

cls
echo Folder Address 1   :
echo %folder1%
echo.
echo Folder Address 2   :
echo %folder2%
echo.
echo Checking folder...
echo.
set "folder1Items=0"
set "folder2Items=0"
set "folder1Unique=0"
set "folder2Unique=0"
set "folderSameItems=0"
for %%f in ("%folder1%\*") do (
    if not exist "%folder2%\%%~nf%%~xf" (
        echo [Folder 1] %%~nf
        set /a folder1Unique+=1
    )
    set /a folder1Items+=1
)
for /d %%f in ("%folder1%\*") do (
    if not exist "%folder2%\%%~nf%%~xf" (
        echo [Folder 1] %%~nf
        set /a folder1Unique+=1
    )
    set /a folder1Items+=1
)
for %%f in ("%folder2%\*") do (
    if not exist "%folder1%\%%~nf%%~xf" (
        echo [Folder 2] %%~nf
        set /a folder2Unique+=1
    ) else set /a folderSameItems+=1
    set /a folder2Items+=1
)
for /d %%f in ("%folder2%\*") do (
    if not exist "%folder1%\%%~nf%%~xf" (
        echo [Folder 2] %%~nf
        set /a folder2Unique+=1
    ) else set /a folderSameItems+=1
    set /a folder2Items+=1
)
echo.
echo Folder 1 Items     : %folder1Items% (Unique : %folder1Unique%)
echo Folder 2 Items     : %folder2Items% (Unique : %folder2Unique%)
echo Same items names   : %folderSameItems%
if "%folderSameItems%" == "0" goto begin
echo.
pause
:Folder_Comparator_-_Name_PromptDel
echo.
echo Do you want to remove duplicate files in folder 2?
set /p "userInput=Y/N? "
if /i "%userInput%" == "N" goto begin
if /i not "%userInput%" == "Y" goto Folder_Comparator_-_Name_PromptDel
:Folder_Comparator_-_Name_PromptDel2
cls
echo Source Folder Address      :
echo %folder1%
echo.
echo Destination Folder Address :
echo %folder2%
echo.
echo Name Duplicates    : %folderSameItems%
echo.
echo Delete same file names in destination folder
echo Duplicate Remover does not remove duplicate folders
echo.
echo Are you sure you want to remove duplicate files in destination folder?
set /p "userInput=Y/N? "
if /i "%userInput%" == "N" goto begin
if /i not "%userInput%" == "Y" (
    echo.
    echo Invalid Choice
    pause
    goto Folder_Comparator_-_Name_PromptDel2
)
cls
echo Removing duplicate files in destination folder...
echo.
set "folderSameItems=0"
for %%f in ("%folder1%\*") do (
    if exist "%folder2%\%%~nf%%~xf" (
        echo.%%~nf
        del /f /q "%folder2%\%%~nf%%~xf"
        set /a folderSameItems+=1
    )
)
echo.
echo Deleted duplicate files (names) in %folder2%
echo.
echo Duplicate Remover does not remove duplicate folders
goto begin

:Folder_Comparator_-_Content
call :pathIn folder
set "folder1=%fileF%"
call :pathIn folder
set "folder2=%fileF%"
cls
echo Folder Address 1   :
echo %folder1%
echo.
if not "%folder1%" == "%folder2%" (
    echo Folder Address 2   :
    echo %folder2%
    echo.
    echo Press any key to compare the folders
) else echo Press any key to check for duplicate files in that folder
pause > nul

cls
echo Folder Address 1   :
echo %folder1%
echo.
if not "%folder1%" == "%folder2%" (
    echo Folder Address 2   :
    echo %folder2%
    echo.
)
echo Checking folder...
echo.
set "folder1Items=0"
set "foundMatchNum=0"
for %%a in ("%folder1%\*") do set /a folder1Items+=1
set "cmpDone=0"

for %%a in ("%folder1%\*") do (
    set /a cmpDone+=1
    title Folder Comparator - Comparing Files [!cmpDone!/%folder1Items%]   ^| Found !foundMatchNum! duplicates
    set "fileMatch="
    for %%b in ("%folder2%\*") do (
        if not defined fileMatch if "%%~za" == "%%~zb" (
            if "%folder1%" == "%folder2%" (
                if not "%%~na%%~xa" == "%%~nb%%~xb" if "%%~na%%~xa" LEQ "%%~nb%%~xb" (
                    fc /b "%%~fa" "%%~fb" > nul  && set "fileMatch=%%~nb%%~xb" || rem Different
                )
            ) else fc /b "%%~fa" "%%~fb" > nul  && set "fileMatch=%%~nb%%~xb" || rem Different
            
        )
        
    )
    if defined fileMatch (
        set /a foundMatchNum+=1
        set "match!foundMatchNum!Name1=%%~na%%~xa"
        set "match!foundMatchNum!Name2=!fileMatch!"
        echo.
        echo [%%~na%%~xa]
        echo [!fileMatch!]
    )
    
)

title Folder Comparator - Content
echo.
echo Found %foundMatchNum% identical files between folders
if "%foundMatchNum%" == "0" goto begin
echo.
pause
:Folder_Comparator_-_Content_PromptDel
echo.
if "%folder1%" == "%folder2%" (
    echo Do you want to remove duplicate files in that folder?
) else echo Do you want to remove identical files in folder 2?
set /p "userInput=Y/N? "
if /i "%userInput%" == "N" goto begin
if /i not "%userInput%" == "Y" goto Folder_Comparator_-_Content_PromptDel
:Folder_Comparator_-_Content_PromptDel2
cls
echo Source Folder Address      :
echo %folder1%
echo.
echo Destination Folder Address :
echo %folder2%
echo.
echo Identical contents    : %foundMatchNum%
echo.
echo Delete previously shown identical files in destination folder
echo Duplicate Remover does not remove duplicate folders
echo.
echo Are you sure you want to remove duplicate files in destination folder?
set /p "userInput=Y/N? "
if /i "%userInput%" == "N" goto begin
if /i not "%userInput%" == "Y" (
    echo.
    echo Invalid Choice
    pause
    goto Folder_Comparator_-_Content_PromptDel2
)
cls
echo Removing duplicate identical files in destination folder...
for /l %%n in (1,1,%foundMatchNum%) do (
    if "%folder1%" == "%folder2%" (
        echo.
        echo 1. !match%%nName1!
        echo 2. !match%%nName2!
        choice /c 12 /m "Delete which one?"
        for %%e in (!errorlevel!) do del /f /q "%folder1%\!match%%eName%%n!"
    ) else del /f /q "%folder2%\!match2Name%%n!"
)
echo.
echo Deleted duplicate (identical) files in %folder2%
echo.
echo Duplicate Remover does not remove duplicate folders
goto begin

for %%e in (!errorlevel!) do del /f /q "%folder1%\!match%%eName%%n!"

:View_System_Environment_Variables
echo Check time: %date% %time%
echo.
echo All User Profile           : %allusersprofile%
echo Application Data           : %appdata%
echo Common Program File        : %commonprogramfiles%
echo Common Program File x86    : %commonprogramfiles(x86)%
echo Computer Name              : %computername%
echo ComSpec                    : %comspec%
echo Current Directory          : %cd%
echo Home Drive                 : %homedrive%
echo Home Path                  : %homepath%
echo Local Application Data     : %localappdata%
echo Logon Server               : %logonserver%
echo Number of Processors       : %NUMBER_OF_PROCESSORS%
echo Operating System           : %OS%
echo Path                       :
echo !path:;=^

!
echo Path Ext                   : %pathext%
echo Process Architecture       : %PROCESSOR_ARCHITECTURE%
echo Processor Identifier       : %PROCESSOR_IDENTIFIER%
echo Processor Level            : %PROCESSOR_LEVEL%
echo Processor Revision         : %PROCESSOR_REVISION%
echo Program Data               : %programdata%
echo Program Files              : %programfiles%
echo Program Files x86          : %programfiles(x86)%
echo Prompt                     : %prompt%
echo PS Module Path             : %psmoulepath%
echo Public                     : %public%
echo Session Name               : %SESSIONNAME%
echo System Drive               : %systemdrive%
echo System Root                : %systemroot%
echo Temp                       : %temp%
echo Tmp                        : %tmp%
echo User Domain                : %userdomain%
echo User Name                  : %username%
echo User Profile               : %userprofile%
echo Windows Directory          : %windir%
goto begin

:List_Folder_Name
call :pathIn folder
cls
echo Folder address:
echo.%fileAddress%
echo.
echo Press any key to list all file and folder names in that folder
pause > nul

set "fileName=File_List.txt"

cls
echo Listing files and folders...
echo Folder Address: >> "%fileName%"
echo.%fileAddress% >> "%fileName%"
echo. >> "%fileName%"
echo ::: Files ::: >> "%fileName%"
for    %%f in (*) do echo.%%~nf%%~xf >> "%fileName%"
echo. >> "%fileName%"
echo ::: Folders ::: >> "%fileName%"
for /d %%f in (*) do echo.%%~nf%%~xf >> "%fileName%"
echo ==================================================================================================== >> "%fileName%"
echo Done
echo.
echo Written to "%fileName%"
goto begin

:Parameter_Execute
call :pathIn file
cls
echo File address:
echo.
echo %fileAddress%
echo.
echo Input the parameter:
echo.
set /p "userInput="

cls
echo File address:
echo.
echo %fileAddress%
echo.
echo Parameter(s)   :
echo.
echo.%userInput%
echo.
echo Press any key to run with parameter...
pause > nul

title %fileAddress%
cls
call %fileAddress% %userInput%
goto begin

:Locate_This_File
cls
echo This file is in:
echo.
echo.%~f0
goto begin

:Shutdown
:Restart
:Hibernate
:Log_Off
:ShutdownToolsIn
cls
echo    60s = 1m    ^|   3600s  = 1h
echo   120s = 2m    ^|   7200s  = 2h
echo   300s = 5m    ^|  18000s  = 5h
echo ================================
echo 86400s = 1D    ^| 604800s  = 1w
echo.
echo Seconds    : (0-315359999 seconds)
echo.
echo Input time before %selectedFunction% :
set /p "userTime="
set /a userTime+=0
:ShutdownForceIn
cls
echo Do you want to force %selectedFunction% ?
set /p "userInput=Y/N? "
call :String_UPPERCASE userInput
if "%userInput%" == "Y" goto ShutdownToolsPrompt
if "%userInput%" == "N" goto ShutdownToolsPrompt
echo.
echo Invalid choice
pause
goto ShutdownForceIn
:ShutdownToolsPrompt
cls
echo Press any key to start %selectedFunction% in %userTime% seconds
pause > nul
cls
echo Starting %selectedFunction% in %userTime% s
if "%selectedFunction%" == "Shutdown"  shutdown -s -t %userTime% /c "%selectedFunction% in %userTime% seconds"
if "%selectedFunction%" == "Restart"   shutdown -r -t %userTime% /c "%selectedFunction% in %userTime% seconds"
if "%selectedFunction%" == "Log_Off"   shutdown -l -t %userTime% /c "%selectedFunction% in %userTime% seconds"
if "%selectedFunction%" == "Hibernate" shutdown -h -t %userTime% /c "%selectedFunction% in %userTime% seconds"
goto begin

:Abort_Shutdown
cls
echo Press any key to abort shutdown
pause > nul
cls
echo Aborting shutdown...
shutdown -a
goto begin

:Lock_Workstation
echo Press any key to lock workstation
pause > nul
cls
echo Locking Workstation...
rundll32 user32.dll,LockWorkStation
goto begin

:Emergency
cls
echo Emergency Tools
shutdown /a 
taskkill /fi "imagename eq wscript.exe" /im "%processName%" /f /t
taskkill /fi "imagename eq cscript.exe" /im "%processName%" /f /t
taskkill /fi "imagename eq cmd.exe" /im "%processName%" /f /t
goto begin

:Registry_Editor
set "regKeyName=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
set "regValueName=DisableRegistryTools"
set "regValueType=REG_DWORD"
set "enableValue=0x0"
set "disableValue=0x1"
call :Registry_Tools
if not "%return%" == "0" (
    echo.
    echo If "Registry editing has been disabled by your administrator."
    echo Try enabling registy editing using gpedit.msc
    echo.
    echo 1. Run "gpedit.msc" from start menu, run or cmd
    echo 2. Open User Configuration ^> Administrative Templates ^> System
    echo 3. Open "Prevent access to registry editing tools"
    echo 4. Set to "Disable"
)
goto begin

:Task_Manager
set "regKeyName=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
set "regValueName=DisableTaskMgr"
set "regValueType=REG_DWORD"
set "enableValue=0x0"
set "disableValue=0x1"
call :Registry_Tools
goto begin

:Disk_Write_Protect
set "regKeyName=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies"
set "regValueName=WriteProtect"
set "regValueType=REG_DWORD"
set "enableValue=0x0"
set "disableValue=0x1"
call :Registry_Tools
goto begin

:Edit_with_Notepad_Menu
set "regKeyName=HKEY_CLASSES_ROOT\*\shell\Edit with Notepad\Command"
set "regValueName="
set "regValueType=REG_SZ"
set "enableValue=notepad.exe %%1"
set "disableValue="
call :Registry_Tools
goto begin

reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Notepad\Command" /v "" /t REG_SZ /d "notepad.exe %1" /f

:Search_Files
cls
echo Example: 
echo * for wild card
echo *.exe for EXE extensions
echo.
echo Input "::" to go back to main menu
echo.
echo Input keyword of files :
set /p "userKeyword="
if "%userKeyword%" == "::" goto begin

cls
set "fileCount=0"
for %%f in (%userKeyword%) do (
    set /a fileCount+=1
    echo %%f
)
echo.
echo Keyword : %userKeyword%
echo.
echo Total of %fileCount% files
goto begin

:Organize_Files
cls
echo Input "::" to go back to main menu
echo.
echo Files found will be moved to a folder
echo according to the keyword
echo.
echo Input keyword  :
set /p "userKeyword="
if "%userKeyword%" == "::" goto begin
if not "%userKeyword:~255%" == "" (
    echo.
    echo Keyword cannot be longer than 255 characters
    pause
    goto Organize_Files
)
set "folderName=%userKeyword%"
for /l %%n in (0,1,255) do if "!folderName:~%%n,1!" == "*" (
    set "tempVar1=!folderName:~%%n!"
    set "folderName=!folderName:~0,%%n!_!tempVar1:~1!"
)

cls
echo File Extension : %userKeyword%
echo Folder Name    : %folderName%
echo.
echo Press any key to start organizing...
pause > nul

cls
echo Moving files...
if not exist "Keyword_%userKeyword%" md "Keyword_%folderName%"
move "*%userKeyword%" "Keyword_%folderName%"
echo.
echo Moved file(s) to "Keyword_%folderName%"
goto begin

:Search_0-Byte_Files
call :pathIn folder
cls
echo Scanning 0-Byte Files...
echo.
set "fileFound=0"
for %%f in (%fileF%\*) do (
    if "%%~zf" == "0" (
        set /a fileFound+=1
        echo %%~nf
    )
)
echo.
echo Found [%fileFound%] 0-Byte Files
:Search_0-Byte_Files_DelPrompt
echo.
echo Delete these files?
set /p "userInput=Y/N? "
if /i "%userInput%" == "Y" goto Search_0-Byte_Files_Delete
if /i "%userInput%" == "N" goto begin
echo.
echo Invalid choice
pause
goto Search_0-Byte_Files_DelPrompt
:Search_0-Byte_Files_Delete
echo.
echo Deleting 0-Byte Files...
for %%f in (%fileF%\*) do (
    if "%%~zf" == "0" (
        del /f /q "%%~ff"
    )
)
echo Done
goto begin

:View_File_Informations
call :pathIn any
cls
echo File Informations
echo.
for %%f in ("%fileF%") do (
    echo Drive Letter   : %%~df
    echo Attributes     : %%~af
    echo Last Modified  : %%~tf
    echo Size           : %%~zf
    echo.
    echo Name       :
    echo %%~nf
    echo.
    echo Extension  : 
    echo.%%~xf
    echo.
    echo Path       :
    echo %%~pf
    echo.
    echo Full Path  :
    echo %%~ff
    echo.
)
goto begin

:fileNameReplace
cls
echo Example: 
echo * for wild card
echo *.bat for *.bat extensions
echo.
echo Input "::" to go back to main menu
echo.
echo Input keyword 1    :
set /p "userKeyword1="
if "%userKeyword1%" == "::" goto begin
echo Input keyword 2    :
set /p "userKeyword2="
if "%userKeyword2%" == "::" goto begin
cls
echo Find       : 
echo.
echo.%userKeyword1%
echo.
echo Replace    : 
echo.
echo.%userKeyword2%
echo.
pause
cls
set "fileCount=0"
for %%f in (*%userExt1%) do (
    set /a fileCount+=1
    ren %%f %%~nf%userExt2%
)
echo.
echo Previous extension : %userExt1%
echo Current extension  : %userExt2%
echo.
echo Total of %fileCount% files
goto begin

:Change_Attribute
call :pathIn any
set "attrib1=%fileA%"
cls
echo File address       :
echo.
echo %fileF%
echo.
echo Current Attributes     : %attrib1%
echo.
echo Attributes:
echo + to set a attribute
echo - to clear a attribute
echo.
echo A. Archive
echo S. System File
echo H. Hidden
echo R. Read-Only
echo I. Not Content Indexed
echo.
echo 0. Back
echo.
echo Input the attributes you want to change:
echo.
set /p "userInput="
if "%userInput%" == "0" goto pathIn

cls
echo Changing attribute...
echo.
attrib %userInput% "%fileF%" /s /d
echo.
echo Done.
pause
call :fileGetInfo fileAddress
set "attrib2=%fileA%"

cls
echo File address       :
echo.
echo %fileF%
echo.
echo Previous Attributes    : %attrib1%
echo Current Attributes     : %attrib2%
goto begin

:Others
cls
systeminfo
echo.
pause
tasklist
echo.
pause
cls
vol
echo.
pause
cls
set
goto begin

rem Tools Functions

:pathIn
rem %1 to define input type [FILE/FOLDER/ANY]
rem %2 to allow user to skip file input [Y/N]
cls
echo Current Directory              :
echo.
echo.%cd%
echo.
echo Previous file / folder input   :
echo %fileAddress%
echo.
echo Enter nothing to use previous file / folder
if /i "%2" == "Y" echo Enter "/\" to skip this step
if /i "%1" == "FOLDER" echo Enter "::" to select current folder
echo.
if /i "%1" == "FILE" (
    echo Input file address :
) else if /i "%1" == "FOLDER" (
    echo Input folder address :
) else echo Input file / folder address :
set "userInput="
set /p "userInput="
if /i "%2" == "Y" if "!userInput!" == "/\" goto begin
if /i "%1" == "FOLDER" if "!userInput!" == "::" set userInput="%cd%"
set dQuote="
if defined userInput (
    if not "!userInput:~0,1!" == "!dQuote!" set userInput="!userInput!"& rem Ends Here
    if not exist !userInput! (
        echo.
        echo Your input file / folder does not exist
        pause
        goto pathIn
    ) else call :fileGetInfo userInput
) else if exist %fileAddress% (
    call :fileGetInfo fileAddress
) else (
    echo.
    echo File / folder does not exist
    pause
    goto pathIn
)
if /i "%fileA:~0,1%" == "d" (
    if /i "%1" == "FILE" (
        echo Your input is not a file...
        pause
        goto pathIn
    )
) else if /i "%1" == "FOLDER" (
    echo Your input is not a folder...
    pause
    goto pathIn
)
if defined userInput set "fileAddress=!userInput!"
goto begin

:fileGetInfo
for %%f in (!%1!) do (
    set "fileD=%%~df" Drive Letter
    set "fileA=%%~af" Attributes
    set "fileT=%%~tf" Last Modified
    set "fileZ=%%~zf" Size
    set "fileN=%%~nf" Name
    set "fileX=%%~xf" Extension
    set "fileP=%%~pf" Path
    set "fileF=%%~ff" Full Path
)
goto begin

:Registry_Tools
cls
set "regValue="
rem Doesnt QUERY "Edit_with_Notepad_Menu" Correctly
for /f "tokens=2*" %%a in ('reg query "%regKeyName%" /v "%regValueName%" ^| find "%regValueName%"') do set "regValue=%%b" > nul 2> nul
if "%regValue%" == "%enableValue%" (
    echo %selectedFunction:_= % Status   : Enabled
) else if "%regValue%" == "%disableValue%" (
    echo %selectedFunction:_= % Status   : Disabled
) else echo %selectedFunction:_= % Status   : Unknown
echo.
echo Registry Value : [%regValue%]
echo.
echo Enable Value   : [%enableValue%]
echo Disable Value  : [%disableValue%]
echo.
call :Check_Admin
if not "%return%" == "0" (
    echo [ERROR] No Administrator Previledge
    goto begin
)
if "%regValue%" == "%enableValue%" (
    echo Press any key to disable %selectedFunction:_= % ...
) else echo Press any key to enable %selectedFunction:_= % ...
pause > nul
if "%regValue%" == "%enableValue%" (
    echo Are you sure you want to disable?
    echo Press any key to confirm...
    pause > nul
)
cls
if "%regValue%" == "%enableValue%" (
    echo Disabling %selectedFunction:_= % ...
    if "%disableValue%" == "" (
        reg delete "%regKeyName%" /v "%regValueName%" /f
    ) else (
        reg add "%regKeyName%" /v "%regValueName%" /t %regValueType% /d "%disableValue%" /f
    )
) else (
    echo Enabling %selectedFunction:_= % ...
    reg add "%regKeyName%" /v "%regValueName%" /t %regValueType% /d "%enableValue%" /f
)
set "return=%errorlevel%"
goto begin

:Check_Admin
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v Test /t REG_SZ /d Test /f 2> nul > nul
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v Test /f 2> nul > nul
set "return=%errorlevel%"
goto begin

:String_UPPERCASE [Variable Name]
for %%a in (
    A B C D E F G
    H I J K L M N
    O P Q R S T U
    V W X Y Z
) do set "%1=!%1:%%a=%%a!"
goto begin

cls
echo you picked option 11

goto begin


:s-m-c
cls
echo Select a task:
echo =============
echo -
echo 1) Option 1(SMS)
echo 2) Option 2(SMS)-[Receive]
echo 3) Option 3(MMS)
echo 4) Option 4(Call)
echo 5) Option 5(Mail)
echo 6) Option 6(Mail)-[Receive]
echo 7) Option 7(Hide ip)-[for servey sites]
echo 8) Option 8(Valid fake info)-[for servey sites]
echo 9) Option 9(Close all browser)
echo 10) Option 10(Exit)
echo -
set /p op=Type option:
if "%op%"=="1" goto sp1
if "%op%"=="2" goto sp2
if "%op%"=="3" goto sp3
if "%op%"=="4" goto sp4
if "%op%"=="5" goto sp5
if "%op%"=="6" goto sp6
if "%op%"=="7" goto sp7
if "%op%"=="8" goto sp8
if %op%==9 (
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
cls
goto s-m-c
)
if "%op%"=="10"  goto  sp10
if "%op%"=="" cls goto begin



echo Please Pick an option:
goto s-m-c


:sp1
start "" http://www.afreesms.com/freesms/
cls
goto s-m-c
:sp2
start "" https://www.google.com/search?q=my+temp+sms&rlz=1C1GCEA_enBD873BD873&oq=my+temp+sms+&aqs=chrome.0.69i59.4694j0j1&sourceid=chrome&ie=UTF-8
cls
goto s-m-c
:sp3
start "" https://seasms.com/
start "" https://www.opentextingonline.com/
echo you picked option 2
cls
goto s-m-c

:sp4
:call
cls
echo Do call,
echo Choose an option from a below list.
echo 1. Call2friends
echo 2. Ievaphone
echo 3. Spoofmyphone
echo 4. Crazycall
echo 5. Exit
 
echo Enter your choice:
 
set /p choice=
 
if %choice%==1 (
start "" https://call2friends.com/free-calls
)
if %choice%==2 (
start "" https://ievaphone.com/
)
if %choice%==3 (
start "" http://www.spoofmyphone.com/
)
if %choice%==4 (
start "" http://crazycall.net/
)

if %choice%==5 (
cls
goto s-m-c
)

if %choice%=="" (
cls 
goto call
)

goto call:
echo you picked option 3
cls
PAUSE
goto s-m-c
:sp5
start "" https://emkei.cz/

echo you picked option 5
cls
goto s-m-c 
:sp6
start "" https://www.google.com/search?q=gmailnator+com+and+sitelike org

echo you picked option 6
cls
goto s-m-c
:sp7
start "" https://whoer.net/ru && start "" http://check2ip.com/ && start "" http://check2ip.com/htr.htm

echo you picked option 7
cls
goto s-m-c
:sp8
start "" https://www.yellowpages.com/ && start "" http://www.fakeaddressgenerator.com/ && start ""  http://www.elfqrin.com/ && start "" http://www.ssnvalidator.com/ && start "" http://www.ssnregistry.org/validate && start "" http://www.homes.com/ && start "" http://thispersondoesnotexist.com/

echo you picked option 8
cls
goto s-m-c
:sp10
echo you picked option 10
cls
goto begin




:se
cls
title All Shortcuts
echo Welcome,
echo Choose an option from a below list.
echo 0. start.me
echo 1. yandex
echo 2. duckduckgo
echo 3. yahoo
echo 4. google
echo 5. bing
echo 6. social-searcher
echo 7. facebook
echo 8. reddit
echo 9. twitter
echo 10. netbootcamp(pastesearch)[use proxy]
echo 11. inteltechniques(pastesearch)
echo 12. github(find framework's)
echo 13. wikileaks
echo 14. socialmention
echo 15. grep.app(code search)
echo 16. searchcode(code search)
echo 17. nerdydata(manual code search)
echo 18. faganfinder
echo 19. weboas(torrent+!"all"+video)
echo 20. National Search Engines()
echo 21. Meta Search Engines()
echo 22. Bulk
echo 23. Close all browser
echo 24. Exit
set /p choice=Enter your option: 
 if %choice%==23 (
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
cls
goto se
)
if %choice%==24 (
cls
goto begin
) 
if %choice%=="" (
goto se
)  
if %choice%==0 (
start "" https://start.me/p/b56G5Q/search-engines
start "" https://www.faganfinder.com/
goto se
)
echo enter your  vulnerabilities search terms
set /p search=
set "search=%search: =+%"


if %search%=="" (
goto se
)


if %choice%==1 (
start "" https://yandex.com/search/?text=%search%
)
if %choice%==2 (
start "" https://duckduckgo.com/?q=%search%
)
if %choice%==3 (
start "" https://search.yahoo.com/search?p=%search%
)
if %choice%==4 (
start "" https://images.google.com/?q=%search%
)
if %choice%==5 (
start "" https://www.bing.com/search?q=%search%
)
if %choice%==6 (
start "" https://www.social-searcher.com/google-social-search/?q=%search%
)
if %choice%==7 (
start "" http://m.facebook.com/search/top/?q=%search%
)
if %choice%==8 (
start "" https://www.reddit.com/search?q=%search%
)
if %choice%==9 (
start "" https://twitter.com/search?lang=en&q=%search%
)  
if %choice%==10 (
start "" http://netbootcamp.org/pastesearch.html#search&gsc.tab=0&gsc.q=%search%
)  
 if %choice%==11 (
start "" https://inteltechniques.com/pastesearch.html?q=%search%
)  
 if %choice%==12 (
start "" https://github.com/search?q=%search%
)  
if %choice%==13 (
start "" https://search.wikileaks.org/?query=%search%&exact_phrase=&any_of=&exclude_words=&document_date_start=&document_date_end=&released_date_start=&released_date_end=&new_search=True&order_by=most_relevant#results
) 
if %choice%==14 (
start "" http://socialmention.com/search?q=%search%
)

if %choice%==15 (
start "" https://grep.app/search?q=%search%
) 
if %choice%==16 (
start "" https://searchcode.com/?q=%search%
start "" https://www.codeproject.com/search.aspx?q=%search%
start "" https://github.com/search?q=%search%
start "" https://stackoverflow.com/search?q=%search%
start "" https://www.google.com/search?tbm=bks&q=%search%
start "" https://superuser.com/search?q=%search%
start "" https://opensearch.krugle.org/document/search/?query=%search%
start "" https://snipplr.com/all?search=%search%
start "" https://www.openhub.net/p?query=%search%
start "" https://publicwww.com/websites/%search%
start "" https://scholar.google.com/scholar?hl=%search%
start "" https://www.searchblogspot.com/search?q=%search%

) 
if %choice%==17 (
start "" https://www.nerdydata.com/reports/new
)
if %choice%==18 (
start "" https://www.faganfinder.com/
)
if %choice%==19 (
start "" https://weboas.is/
)
if %choice%==20 (

start "" https://www.yippy.com/search?query=%search%
start "" https://search.carrot2.org/#/search/web/%search%
start "" https://yandex.com/images/search?from=tabbar&text=%search%
start "" https://search.walla.co.il/?q=%search%
start "" https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%search%
start "" https://search.goo.ne.jp/web.jsp?MT=%search%
start "" http://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=%search%

) 
if %choice%==21 (
start "" https://www.izito.com/?q=%search%
start "" https://www.alltheinternet.com/?q=%search%
start "" https://www.etools.ch/searchSubmit.do?query=%search%
start "" https://www.qwant.com/?q=%search%

)   
if %choice%==22 (
start "" https://yandex.com/search/?text=%search%
start "" http://socialmention.com/search?q=%search%
start "" https://www.social-searcher.com/google-social-search/?q=%search%
start "" https://inteltechniques.com/pastesearch.html?q=%search%
start "" https://www.etools.ch/searchSubmit.do?query=%search%
start "" https://www.qwant.com/?q=%search%
start "" https://www.yippy.com/search?query=%search%
start "" https://search.carrot2.org/#/search/web/%search%
start "" http://searchinfo.site
start "" http://www.dogpile.com/serp?q=%search%
start "" https://www.google.com/search?tbm=bks&q=%search%
start "" https://scholar.google.com/scholar?hl=%search%
start "" https://www.searchblogspot.com/search?q=%search%
)   

  
   
goto se:




:vu
cls
title All Shortcuts
echo Welcome,
echo Choose an option from a below list.
echo -14. (face recognition search || image search)
echo -13. SatelliteMap 
echo -12. network firewall status (See Which pc is on in your network)
echo -11. exif (Photo geo location)
echo -10. Google Map (Train/Flight/Car times)
echo -9.  flighttradar24(Flight Map)
echo -8.  marinetraffic(Submarine Map)
echo -7.  canarytokens(Honeypot)
echo -6.  Dnsdumpster
echo -5.  windy (°C-Map)
echo -4.  aprs (Map)
echo -3.  Identity (Domain Name, Organization Name, etc), a Certificate Fingerprint (SHA-1 or SHA-256)
echo -2.  wigle(wifi-BSSID on map )
echo -1.  cybermap(Attack Map)
echo  0.  online nmap(manually scan)
echo  1.  Common Vulnerabilities and Exposures
echo  2.  seebug
echo  3.  exploit-db
echo  4.  greynoise
echo  5.  shodan
echo  6.  fofa
echo  7.  onyphe
echo  8.  nvd.nist
echo  9.  inteltechniques(pastesearch)
echo  10. netbootcamp(pastesearch)[use proxy]
echo  11. ghostproject(find password)
echo  12. github(find framework's)
echo  13. wikileaks
echo  14. Bulk
echo  15. Close all browser
echo  16. Exit
set /p choice=Enter your option: 
 if %choice%==15 (
taskkill /F /IM chrome.exe 
taskkill /F /IM brave.exe
taskkill /F /IM firefox.exe
taskkill /F /IM geckodriver.exe
taskkill /F /IM chromedriver.exe
taskkill /F /IM msedge.exe
cls
goto begin
)
if %choice%==16 (
cls
goto begin
) 

if %choice%==-14 (
cls
start "" https://pimeyes.com/
start "" http://www.pictriev.com/
goto vu
)
if %choice%==-13 (
cls
start "" https://satellitemap.space/
goto vu
)
if %choice%==-12 (
cls
FOR /L %%i IN (1,1,254) DO netsh -r 192.168.1.%%i advfirewall show allprofiles
goto vu
)
if %choice%==-11 (
start "" http://exif.regex.info/exif.cgi
goto vu
) 
if %choice%==-10 (
start "" https://www.google.com/maps/dir/Lucknow,+Uttar+Pradesh,+India/Kanpur,+Uttar+Pradesh,+India/@26.5814842,80.4768045,81790m/data=!3m1!1e3!4m14!4m13!1m5!1m1!1s0x399bfd991f32b16b:0x93ccba8909978be7!2m2!1d80.946166!2d26.8466937!1m5!1m1!1s0x399c4770b127c46f:0x1778302a9fbe7b41!2m2!1d80.3318736!2d26.449923!3e3
goto vu
) 
if %choice%==-7 (
start "" https://canarytokens.org/generate
goto vu
) 
if %choice%==-6 (
start "" https://dnsdumpster.com/
goto vu
)
if %choice%==-5 (
start "" https://www.windy.com/
goto vu
)
if %choice%==-2 (
start "" https://wigle.net/
goto vu
)
if %choice%==-1 (
start "" https://cybermap.kaspersky.com/
goto vu
)
if %choice%==0 (
start "" http://nmap.online-domain-tools.com/
goto vu
)
echo enter your  vulnerabilities search terms
set /p v=
set "v=%v: =+%"
if %choice%==-9 (
start "" https://www.google.com/search?q=%v%+site:flightradar24.com
goto vu
)

if %choice%==-8 (
start "" https://www.google.com/search?q=%v%+site:marinetraffic.com

      
goto vu
)
if %choice%==1 (
start "" https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=%v%
)
if %choice%==2 (
start "" https://www.seebug.org/search/?keywords=%v%
)
if %choice%==3 (
start "" https://www.exploit-db.com/search?q=%v%
)
if %choice%==-3 (
start "" https://crt.sh/?q=%v%
goto vu
)
if %choice%==-4 (
start "" https://aprs.fi/#!addr=%v%
goto vu
)
if %choice%==4 (
start "" https://viz.greynoise.io/query/?gnql=%v%
)
if %choice%==5 (
start "" https://www.shodan.io/search?query=%v%
)
if %choice%==6 (
start "" https://fofa.so/result?q=%v%
)
if %choice%==7 (
start "" https://www.onyphe.io/search/?query=%v%
)
if %choice%==8 (
start "" https://nvd.nist.gov/vuln/search/results?form_type=Basic&results_type=overview&query=%v%
)
if %choice%==9 (
start "" http://inteltechniques.com/pastesearch.html?q=%v%
)  
if %choice%==10 (
start "" http://netbootcamp.org/pastesearch.html#search&gsc.tab=0&gsc.q=%v%
)  
 if %choice%==11 (
start "" https://ghostproject.fr/
)  
 if %choice%==12 (
start "" https://github.com/search?q=%v%
)  
if %choice%==13 (
start "" https://search.wikileaks.org/?query=%v%&exact_phrase=&any_of=&exclude_words=&document_date_start=&document_date_end=&released_date_start=&released_date_end=&new_search=True&order_by=most_relevant#results
) 
 if %choice%==14 (
start "" https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=%v%
start "" https://www.seebug.org/search/?keywords=%v%
start "" https://www.exploit-db.com/search?q=%v%
start "" https://viz.greynoise.io/query/?gnql=%v%
start "" https://www.shodan.io/search?query=%v%
start "" https://fofa.so/result?q=%v%
start "" https://www.onyphe.io/search/?query=%v%
start "" https://nvd.nist.gov/vuln/search/results?form_type=Basic&results_type=overview&query=%v%
start "" http://inteltechniques.com/pastesearch.html?q=%v%
start "" http://netbootcamp.org/pastesearch.html#search&gsc.tab=0&gsc.q=%v%
start "" https://github.com/search?q=%v%
start "" https://search.wikileaks.org/?query=%v%&exact_phrase=&any_of=&exclude_words=&document_date_start=&document_date_end=&released_date_start=&released_date_end=&new_search=True&order_by=most_relevant#results
start "" https://securityonline.info/search_gcse/?q==%v%
)  

  
if %choice%=="" (
goto vu
)     
goto vu:






:fixwin
cls
title Created by Himel Sarkar
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo ! The script contains 4 procedures.
echo ! The 1st procedure checks the disk - regular Checkdisk - 1 phase
echo ! The 2nd procedure checks and repairs the Windows Component Files - 2 phases
echo ! The 3rd procedure checks and repairs the Windows image - 4 phases
echo ! The 4th procedure uses System file check to check system files - 1 phase
echo ! In Windows 7 only CHKDSK and SFC work, the rest is new (Windows 8 +)
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
timeout 10
cls
echo -------------------------------------------------
echo Checking the Windows partition - procedure 1 of 4
echo -------------------------------------------------
chkdsk c: /scan
echo -------------------------------------------
echo If it finds some problems, run chkdsk c: /f
echo -------------------------------------------
timeout 10
cls
echo ------------------------------------------------
echo Windows component files check - procedure 2 of 4
echo ------------------------------------------------
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
echo --------------------------------------------------
echo Phase 1 of 2 completed
echo --------------------------------------------------
Dism.exe /online /Cleanup-Image /SPSuperseded
echo --------------------------------------------------
echo Phase 2 of 2 completed
timeout 10
cls
echo --------------------------------------------------------------
echo Checking the integrity of the Windows image - procedure 3 of 4
echo --------------------------------------------------------------
DISM /Online /Cleanup-Image /CheckHealth
echo --------------------------------------------------
echo Phase 1 of 4 completed
echo --------------------------------------------------
DISM /Online /Cleanup-Image /ScanHealth
echo --------------------------------------------------
echo Phase 2 of 4 completed
echo --------------------------------------------------
DISM /Online /Cleanup-Image /RestoreHealth
echo --------------------------------------------------
echo Phase 3 of 4 completed 
echo --------------------------------------------------
DISM /Online /Cleanup-Image /RestoreHealth /Source:repairSource\install.wim
echo --------------------------------------------------
echo Phase 4 of 4 completed 
timeout 10
cls
echo -------------------------------------------------
echo Running System file check - procedure 4 of 4
echo -------------------------------------------------
sfc /scannow
echo --------------------------------------------------------------------------------
echo If SFC found some errors and could not repair, re-run the script after a reboot.
echo --------------------------------------------------------------------------------
wuauclt / detectnow / updatenow
timeout 10

goto begin


:op16

cls
taskkill /F /IM  SbieCtrl.exe /T
taskkill /F /IM  BijoyBayanno.exe /T
taskkill /F /IM "Creative Cloud.exe" /T
taskkill /F /IM OfficeClickToRun.exe /T
taskkill /F /IM AdobeUpdateService.exe /T
taskkill /F /IM armsvc.exe /T
taskkill /F /IM MicrosoftEdgeUpdate.exe /T
taskkill /F /IM BraveUpdate.exe /T
taskkill /F /IM vmware-hostd.exe /T
taskkill /F /IM vmware-authd.exe /T
taskkill /F /IM AGCInvokerUtility.exe /T
taskkill /F /IM GameBar.exe /T
taskkill /F /IM armsvc.exe /T
taskkill /F /IM helperservice.exe /T
taskkill /F /IM wuauclt.exe /T
taskkill /F /IM msiexec.exe /T
taskkill /F /IM IntelSoftwareAssetManagerService.exe /T
taskkill /F /IM CS6ServiceManager.exe /T
taskkill /F /IM openvpn-gui.exe /T
taskkill /F /IM vpncmgr_x64.exe /T
taskkill /F /IM vpnclient_x64.exe /T
taskkill /F /IM WSHelper.exe /T
taskkill /F /IM updaterstartuputility.exe /T
taskkill /F /IM AGCInvokerUtility.exe /T
taskkill /F /IM APSDaemon.exe /T
taskkill /F /IM fdm.exe /T
taskkill /F /IM DSAUpdateService.exe /T
taskkill /F /IM SoftwareUpdate.exe /T
taskkill /F /IM BitTorrentAntivirus.exe /T
taskkill /F /IM uTorrent.exe /T
taskkill /F /IM SbieCtrl.exe /T
ipconfig /flushdns

nbtstat –r

netsh int ip reset

netsh winsock reset

netsh int ip reset resettcpip.txt

netsh winhttp reset proxy



tree  



rd %prefetch% /s /q
md %prefetch%

del C:\Windows\Temp\*.* /Q
del /q /f /s “%USERPROFILE%\AppData\Local\Temp\*.*" /Q
del C:\Windows\Prefetch\*.* /Q


if %os%==Windows_NT goto WINNT

goto NOCON

 

:WINNT

echo .Using a Windows NT based system

echo ..%computername%

 

echo Deleting Temporary Internet Files

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*”

del /q /f /s “%temp%\*.*”

echo deleted!

 

echo Deleting Prefetch folder data

del /q /f /s “%systemroot%\Prefetch\*.*”

echo deleted!

 

echo Deleting Temp folder data

del /q /f /s “%systemroot%\Temp\*.*”

echo deleted!

 

echo Deleting Cookies

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Cookies\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Microsoft\Internet Explorer\DOMStore\*.*”

echo deleted!

 

echo Deleting History

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\History\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Active\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Last Active\*.*”

echo deleted!

 

echo Deleting Windows Internet Explorer Dat Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PrivacIE\*.*”

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IECompatCache\*.*”

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IETldCache\*.*”

echo deleted!

 

echo Deleting Windows Error Reporting Files

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ReportArchive\*.*”

echo deleted!

 

echo Deleting Flash Player Temp Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Macromedia\Flash Player\*.*”

echo deleted!

 

echo Deleting Remote Desktop Cache

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache\*.*”

echo deleted!

 

echo Deleting Profile Temp Files

del /q /f /s “%USERPROFILE%\AppData\Local\Temp\*.*”

echo deleted!

 

echo Deleting FireFox Cache

 

pushd “%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\*.default\”

del /q /f /s “Cache\*.*”

popd

 

echo deleted!

 

echo Deleting User Profile Adobe Temp Files

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Acrobat\9.0\Search\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache Files\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache\*.*”

echo deleted!

 

echo Deleting User Office Recent Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Office\Recent\*.*”

echo deleted!

 

echo Deleting User Office TMP Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Office\*.tmp”

echo deleted!

 

echo Emptying Recycle Bin

del %systemdrive%\$Recycle.bin\*.* /f /s /q

echo emptied!

 

echo Deleting Recent Items

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*.tmp”

echo deleted!
cd\
cd C:\Windows\Temp
erase /Q *.*

cd\
cd %temp% 
erase /Q *.*

cd\
cd C:\Windows\prefetch
erase /Q *.*

cls
goto begin

 

:NOCON

echo Error…Invalid Operating System…

echo Error…No actions were made…

goto begin




:op17
cls
echo checking file structure...
if exist "%Temp%\antimos_xp\AntiMOSXP.exe" (
if exist "%Temp%\antimos_xp\AntiMOSXP.exe" (
cd \

cd %temp%
cd antimos_xp
start AntiMOSXP.exe

cls

echo Simply leave current window's 
pause
taskkill /F /IM AntiMOSXP.exe /T
cd\
cd %Temp%\antimos_xp\
del SEAMOS.INI
cls
goto begin
goto ok
)
)

if not exist "%temp%\SEA_antimosquitoes_xp_2.zip" (
if not exist "%temp%\SEA_antimosquitoes_xp_2.zip" (
goto download
)
)
if not exist "%temp%\SEA_antimosquitoes_xp_2.zip" (
goto download
)
)

if not exist "%temp%\SEA_antimosquitoes_xp_2.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -L https://www.allmosquitos.com/upl/File/SEA_antimosquitoes_xp_2.zip > "SEA_antimosquitoes_xp_2.zip"





set mypath=%cd%\SEA_antimosquitoes_xp_2.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %temp%
cd antimos_xp
start AntiMOSXP.exe

cd ..

erase /Q *.*
cls
echo for close it(SEA Anti-MoSquIToes XP 2.0) press enter
pause
taskkill /F /IM AntiMOSXP.exe /T
cd\
cd %Temp%\antimos_xp\
del SEAMOS.INI
cls
goto begin

:ok
echo Install successful

:op18
cls
echo checking file structure...
if exist "%Temp%\Moskito Expert.exe" (
if exist "%Temp%\Moskito Expert.exe" (
cd \

cd %temp%

start "" "Moskito Expert.exe"

cls


pause
taskkill /F /IM "Moskito Expert.exe" /T
goto begin
goto ok
)
)

if not exist "%temp%\Moskito Expert.exe" (
if not exist "%temp%\Moskito Expert.exe" (
goto download
)
)
if not exist "%temp%\Moskito Expert.exe" (
goto download
)
)

if not exist "%temp%\Moskito Expert.exe" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1CdtEnoTXq-UtW_Sxo7vObjCrjArhpe60?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "Moskito Expert.exe"










start "" "Moskito Expert.exe"
erase /Q *.*



cls
echo for close it(Moskito Expert) press enter
pause
taskkill /F /IM "Moskito Expert.exe" /T
goto begin

:ok
echo Install successful




:op19
cls
echo checking file structure...
if exist "%Temp%\Anti Mosquito.exe" (
if exist "%Temp%\Anti Mosquito.exe" (
cd \

cd %temp%

start "" "Anti Mosquito.exe"

cls


pause
taskkill /F /IM "Anti Mosquito.exe" /T
goto begin
goto ok
)
)

if not exist "%temp%\Anti Mosquito.exe" (
if not exist "%temp%\Anti Mosquito.exe" (
goto download
)
)
if not exist "%temp%\Anti Mosquito.exe" (
goto download
)
)

if not exist "%temp%\Anti Mosquito.exe" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1whZiLrUlwDtcz0kMN-sxkhK2uuT17cnq?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8"  > "Anti Mosquito.exe"










start "" "Anti Mosquito.exe"
erase /Q *.*



cls
echo for close it(Anti Mosquito.exe) press enter
pause
taskkill /F /IM "Anti Mosquito.exe" /T
goto begin

:ok
echo Install successful



:op20

cls
echo checking file structure...
if exist "%Temp%\h.wav" (
if exist "%Temp%\h.wav" (
cd \

cd %temp%

start h.wav

cls


pause

goto begin
goto ok
)
)

if not exist "%temp%\h.wav" (
if not exist "%temp%\h.wav" (
goto download
)
)
if not exist "%temp%\h.wav" (
goto download
)
)

if not exist "%temp%\h.wav" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%



curl -L "https://www.googleapis.com/drive/v3/files/1APN2y7plVCHbWDtzl1iAWjg07hgrHz0N?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "h.wav"



start h.wav



cls
echo for close it press enter
pause

erase /Q *.*

goto begin

:ok
echo Install successful





:rp3
cls
echo ========================
echo # Dig into recycle bin # 
echo ========================
echo Select a task(any error press CTRL+c , y , Enter):
echo =============
echo -
echo 1) Option 1 (Dig more)
echo 2) Option 2 (Visual Digging)[have some limitation]
echo 3) Option 3 (Recover)
echo 4) Option 4 (File Forensic)
echo 5) Option 5 (Network IP Scanner)
echo 6) Option 6 (CPU info)
echo 7) Option 7 (Exit)
echo -
set /p op=Type option:
if "%op%"=="1" goto op11
if "%op%"=="2" goto op22
if "%op%"=="3" goto op33
if "%op%"=="4" goto fi
if "%op%"=="5" goto ipp
if "%op%"=="6" goto cpu
if "%op%"=="7" goto op55
echo Please Pick an option:
goto beginnn


:op11
cls
echo dig more into it
cd\ && cd $Recycle.Bin && dir /a /s /w /b
pause
cls
echo you picked option 1
goto rp3

:op22
cls
cd\ && cd $Recycle.Bin && dir /b /a && cd\
cd $Recycle.Bin
set /p op=Type your disk id frome above (Example S-1-5-21-440246471-2508580497-2753288854-1001):
echo Wait for (1-120) seconds 
attrib -h -r -s /s /d
cd *%op%*
tree /F /A
dir /a /s /w
pause
cls
echo you picked option 2
goto rp3

:op33
cls

echo Select a task:
echo =============
echo -
echo 1) Option 1 (Would you like to do default recovery)
echo 2) Option 2 (Custom location recovery )[Recommended]
echo 3) Option 3 (Visualize your destination/Recovered folder)
echo 3) Option 4 (Exit)
set /p op=Type your recovery option:
if "%op%"=="1" goto opppp1
if "%op%"=="2" goto opppp2
if "%op%"=="3" goto opppp3
if "%op%"=="4" goto opppp4



:opppp1
cd\
cd %appdata%
cd..
cd..
cd Desktop
mkdir "Himel Sarkar"
cd "Himel Sarkar"
xcopy "C:\$Recycle.Bin\*.*" /o /x /e /h /k


pause
cls
echo you picked option 2
goto rp3

:opppp2
cls
cd\ && cd $Recycle.Bin && dir /b /a && cd\

set /p op=Type your source location or full id(Example S-1-5-21-440246471-2508580497-2753288854-1001):

cd %appdata%
cd..
cd..
cd Desktop
mkdir "Himel Sarkar"
cd "Himel Sarkar"
xcopy "%op%*" /o /x /e /h /k
xcopy "C:\$Recycle.Bin\%op%\*" /o /x /e /h /k


pause
cls
echo you picked option 2
goto rp3

:opppp3
cls
echo visualize your destination folder
cd\
cd %appdata%
cd..
cd..
cd Desktop
mkdir "Himel Sarkar"
cd "Himel Sarkar"
attrib -h -r -s /s /d 
tree /F /A
dir /a /s /w 



pause
cls
echo you picked option 3
goto rp3

:opppp4
cls
echo you picked option 4
goto op44


:fi
title File Forensic

if [%1] == [] goto fileIn
set "fileAddress=%1"
set "fileAddress=%fileAddress:~1,-1%"
goto fileCheck

:fileIn
cls
echo Input the file address:
echo.
set /p "fileAddress="
echo.
echo Checking...
if exist "%fileAddress%" goto fileCheck
echo.
echo File does not exist
pause
goto fileIn

:fileCheck
cls
echo File Informations
echo.
for %%f in ("%fileAddress%") do (
    echo Drive Letter   : %%~df
    echo Attributes     : %%~af
    echo Last Modified  : %%~tf
    echo Size           : %%~zf
    echo.
    echo Name       :
    echo %%~nf
    echo.
    echo Extension  : 
    echo %%~xf
    echo.
    echo Path       :
    echo %%~pf
    echo.
    echo Full Path  :
    echo %%~ff
    echo.
)
echo.
pause
goto fileIn
goto fi






@goto main

:ipp
rem Network IP Scanner
rem Updated on 2016-11-22


:main
@echo off
prompt $s
cd /d "%~dp0"
setlocal EnableDelayedExpansion EnableExtensions

set "pingTimeout=750"
set "fileAddress=!appdata!\IP_List.bat"

set parameter=%1
if not defined parameter goto detectConnections
if /i "!parameter!" == "QuickScan" goto quickScan_test


:detectConnections
title IP Scanner
cls
echo Detecting network connection...
set "selectedIPv4="
set "adapterConnected=0"
for /f "tokens=* usebackq" %%o in (`ipconfig /all`) do (
    set "output=%%o"
    if "!output:~0,12!" == "IPv4 Address" (
        set "selectedIPv4=!output:~36,62!"
        goto scriptSetup
    )
)
echo No connected adapters detected, cannot scan IP...
pause
exit


:scriptSetup
set "userInput=?"
for /f "tokens=1-3 delims=." %%a in ("!selectedIPv4!") do set "selectedIPv4=%%a.%%b.%%c"
set /a "timeSecMax=!pingTimeout!*256/1000"
set "aliveIP_Num=0"

:mainMenu
cls
echo Selected IP    : %selectedIPv4%.*
echo.
echo 1. Scan for Alive-IPs
echo 2. Quick Scan
echo 3. List IPs according to ping
echo 4. Change selected IP
echo 5. View your IP
echo.
echo T. Change ping timeout [%pingTimeout%ms]
echo 0. Exit
echo.
echo Input your choice:
set /p "userInput="
if "!userInput!" == "0" exit
if "!userInput!" == "1" goto normalScan
if "!userInput!" == "2" goto quickScan
if "!userInput!" == "3" goto sortPing
if "!userInput!" == "4" goto inputIP
if "!userInput!" == "5" goto viewIP
if /i "!userInput!" == "T" goto inputTimeout
goto mainMenu


:viewIP
cls
set "adapterNum=0"
for /f "tokens=* usebackq" %%o in (`ipconfig /all`) do (
    set "output=%%o"
    if "!output:~-1,1!" == ":" (
        set "connectionName=!output:~0,-1!"
        set "adapterConnected=Y"
    )
    if "!output:~36,18!" == "Media disconnected" set "adapterConnected=N"
    if "!output:~0,11!,!adapterConnected!" == "Description,Y" (
        set /a "adapterNum+=1"
        echo !adapterNum:~-2,2!. !output:~36,75!
        echo   =^> !connectionName:~0,74!
    )
    if "!output:~0,12!" == "IPv4 Address" (
        echo   IP: !output:~36,62!
        echo.
    )
)
echo.
pause
goto mainMenu


:inputTimeout
cls
echo Current ping timeout   : !pingTimeout!ms
echo.
echo Input new ping timeout in millisecond :
set /p "pingTimeout="
set /a "pingTimeout+=0"
set /a "timeSecMax=!pingTimeout!*256/1000"
if !pingTimeout! GEQ 500 if !pingTimeout! LEQ 10000 goto mainMenu
echo.
echo Invalid number
echo Ping timeout should be from 500 - 10000 ms
pause
goto inputTimeout


:inputIP
set "userInput=!selectedIPv4!.z"
cls
echo Selected IP    : !selectedIPv4!.*
echo.
echo Input selected IP:
set /p "userInput="
set "validIP=Y"
for /f "tokens=1-5 delims=." %%a in ("!userInput!") do (
    set "userInput=%%a.%%b.%%c"
    for %%n in ( %%a1 %%b1 %%c1) do (
        if %%n LSS 1   set "validIP=N"
        if %%n GTR 2551 set "validIP=N"
    )
    if not "%%e" == "" set "validIP=N"
)
if "!validIP!" == "Y" (
    set "selectedIPv4=!userInput!"
    goto mainMenu
)
echo.
echo Invalid IPv4 address
pause
goto inputIP


:quickScan
echo.
set "cpuLoad=0"
for /f "skip=1" %%o in ('wmic cpu get loadpercentage') do set /a "cpuLoad+=%%o + 0"
if !cpuLoad! GTR 20 (
    echo.
    echo CPU load is too much to do quick scan 
    echo Load !cpuLoad!%%   ^| Required load ^< 20%%
    pause
    goto mainMenu
)
set "freeMem=0"
for /f "skip=1" %%o in ('wmic os get freephysicalmemory') do set /a "freeMem+=%%o + 0"
set /a "freeMem/=1024"
if !freeMem! LSS 800 (
    echo.
    echo Not enough memory to do quick scan 
    echo Free memory !freeMem!MB   ^| Required memory ^> 800MB
    pause
    goto mainMenu
)

title IP Scanner - Preparing...
cls
echo You must be connected to the network to scan
echo Your computer might freeze for a while during scan
echo.
echo Scanning IPs...

set "startTime=!time!"
echo. > "!fileAddress!"
for /l %%n in (0,1,255) do set "statusIP%%n="
set "statusIP=dead"
set "tempVar1=1"
for /l %%n in (0,1,255) do start "" /b /min /low "%~f0" QuickScan %%n

:readFile
timeout /t 1 /nobreak > nul
call "%fileAddress%"
set "pingTested=0"
for /l %%n in (0,1,255) do if defined statusIP%%n set /a "pingTested+=1"
title IP Scanner - Scanning... [!pingTested!/256]
if not "!pingTested!" == "256" goto readFile
del /f /q "!fileAddress!"

title IP Scanner
set "aliveIP_List="
set "aliveIP_Num=0"
set "deadIP_List="
set "deadIP_Num=0"
for /l %%n in (0,1,255) do (
    set "tempVar1=    %%n"
    for %%s in (!statusIP%%n!) do (
        set "%%sIP_List=!%%sIP_List!!tempVar1:~-4,4!"
        set /a %%sIP_Num+=1
    )
    set "statusIP%%n="
)
goto viewAliveIP


:quickScan_test
(
    title IP Scanner - Testing !selectedIPv4!.%2
    for /f "tokens=* usebackq" %%s in (`ping -n 1 -w !pingTimeout! !selectedIPv4!.%2`) do (
        if "!tempVar1!" == "6" set "statusIP=alive"
        set /a "tempVar1+=1"
    )
    for /l %%n in (0,0,1) do (
        2>nul (
          echo set "statusIP%2=!statusIP!" >> "!fileAddress!"
        ) && exit
    )
)
exit


:normalScan
cls
echo You must be connected to the network to scan
echo This may take up to %timeSecMax% seconds to complete
echo.
echo Scanning IPs...

set "startTime=%time%"
set "aliveIP_List="
set "aliveIP_Num=0"
set "deadIP_List="
set "deadIP_Num=0"
for /l %%n in (0,1,255) do (
    title IP Scanner - Testing %selectedIPv4%.%%n
    set "statusIP=dead"
    set "tempVar1=1"
    for /f "tokens=* usebackq" %%s in (`ping -n 1 -w %pingTimeout% %selectedIPv4%.%%n`) do (
        if "!tempVar1!" == "6" set "statusIP=alive"
        set /a tempVar1+=1
    )
    set "tempVar1=    %%n"
    for %%s in (!statusIP!) do (
        set "%%sIP_List=!%%sIP_List!!tempVar1:~-4,4!"
        set /a %%sIP_Num+=1
    )
)

:viewAliveIP
call :difftime !time! !startTime!
call :ftime !return!

set /a "aliveIP_Percentage= !aliveIP_Num! * 100 / 255"
set /a "deadIP_Percentage= !deadIP_Num! * 100 / 255"

cls
title IP Scanner
echo Selected IP    : !selectedIPv4!.*
echo.
echo Alive-IPs [!aliveIP_Num!] - !aliveIP_Percentage!%%
echo.!aliveIP_List!
echo ================================================================================
echo Dead-IPs  [!deadIP_Num!] - !deadIP_Percentage!%%
echo.!deadIP_List!
echo.
echo Scan Done in !return!
pause > nul
goto mainMenu


:sortPing
if "!aliveIP_Num!" == "0" (
    echo Nothing to be listed: No alive-IPs found
    echo Please try to scan IPs
    pause
    goto mainMenu
)
cls
echo Selected IP    : !selectedIPv4!.*
echo.
echo Scanning IPs...
for %%n in (!aliveIP_List!) do (
    set "tempVar1=1"
    set "IP%%n_Ping=dead"
    for /f "tokens=* usebackq" %%o in (`ping -n 1 -w !pingTimeout! !selectedIPv4!.%%n`) do (
        if "!tempVar1!" == "6" for /f "tokens=4 delims==" %%a in ("%%o") do (
            set "IP%%n_Ping=%%a"
            set "IP%%n_Ping=!IP%%n_Ping:ms=!"
            set "IP%%n_Ping=!IP%%n_Ping: =!"
        )
        set /a tempVar1+=1
    )
)
echo Sorting pings...
set "tempVar1=1"
for %%n in (!aliveIP_List!) do (
    set "pingIP!tempVar1!=%%n"
    set /a tempVar1+=1
)
rem Selection Sort
for /l %%s in (1,1,!aliveIP_Num!) do (
    set "bestPing=z"
    set "bestPingNum=?"
    for /l %%l in (%%s,1,%aliveIP_Num%) do for %%n in (!pingIP%%l!) do (
        if !IP%%n_Ping! LSS !bestPing! (
            set "bestPing=!IP%%n_Ping!"
            set "bestPingNum=%%l"
        )
    )
    for %%l in (!bestPingNum!) do (
        set "tempVar1=!pingIP%%s!"
        set "pingIP%%s=!pingIP%%l!"
        set "pingIP%%l=!tempVar1!"
    )
)

cls
echo Selected IP    : %selectedIPv4%.*
echo.
echo   #     IP Address     Ping (ms)
echo ================================
for /l %%s in (1,1,!aliveIP_Num!) do (
    for %%n in (!pingIP%%s!) do (
        set "display=      !IP%%n_Ping!"
        set "tempVar1=!selectedIPv4!.%%n            "
        set "display=   !tempVar1:~0,15!!display:~-8,8!"
        set "display=  %%s!display:~-26,26!"
        echo !display:~-29,29!
    )
)
echo.
pause
goto mainMenu

rem Functions

:difftime [end_time] [start_time] [/n]
set "return=0"
for %%t in (%1:00:00:00:00 %2:00:00:00:00) do (
    for /f "tokens=1-4 delims=:." %%a in ("%%t") do (
        set /a "return+=24%%a %% 24 *360000 +1%%b*6000 +1%%c*100 +1%%d -610100"
    )
    set /a "return*=-1"
)
if /i not "%3" == "/n" if !return! LSS 0 set /a "return+=8640000"
goto :EOF

:ftime [time_in_centisecond]
set /a "tempVar1=%~1 %% 8640000"
set "return="
for %%n in (360000 6000 100 1) do (
    set /a "tempVar2=!tempVar1! / %%n"
    set /a "tempVar1=!tempVar1! %% %%n"
    set "tempVar2=?0!tempVar2!"
    set "return=!return!!tempVar2:~-2,2!:"
)
set "return=!return:~0,-4!.!return:~-3,2!"
goto :EOF




:cpu

title Get CPU Information
set lfn=CPU Info.txt
@echo ------------------------------------------------------------------------>>"%lfn%"
@echo Start: %date% %time%>>"%lfn%"
@echo User: %username%>>"%lfn%"
systeminfo>>"%lfn%"
vol>>"%lfn%"
@echo.>>"%lfn%"
@echo Tasklist:>>"%lfn%"
tasklist>>"%lfn%"
@echo.>>"%lfn%"







:op55
cls
echo you picked option 1
goto begin
exit




:prexp
cls
echo checking file structure...
if exist "%Temp%\ProcessExplorer\procexp64.exe" (
if exist "%Temp%\ProcessExplorer\procexp64.exe" (
cd \

cd %temp%
cd ProcessExplorer
start procexp64.exe

cls


pause
taskkill /F /IM procexp64.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\ProcessExplorer.zip" (
if not exist "%temp%\ProcessExplorer.zip" (
goto download
)
)
if not exist "%temp%\ProcessExplorer.zip" (
goto download
)
)

if not exist "%temp%\ProcessExplorer.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -L https://download.sysinternals.com/files/ProcessExplorer.zip > "ProcessExplorer.zip"

cd\
cd %temp%



set mypath=%cd%\ProcessExplorer.zip
Call :UnZipFile "%temp%\ProcessExplorer" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %temp%
cd ProcessExplorer
start procexp64.exe

cd ..

erase /Q *.*
cls
echo for close it(ProcessExplorer) press enter
pause
taskkill /F /IM procexp64.exe /T
cls
goto begin

:ok
echo Install successful



:prlistport
cls
echo checking file structure...
if exist "%Temp%\process_lister_portable\PORTABLE\64-bit\ProcessLister.exe" (
if exist "%Temp%\process_lister_portable\PORTABLE\64-bit\ProcessLister.exe" (
cd \

cd %Temp%\process_lister_portable\PORTABLE\64-bit\

start ProcessLister.exe

cls


pause
taskkill /F /IM ProcessLister.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\process_lister_portable.zip" (
if not exist "%temp%\process_lister_portable.zip" (
goto download
)
)
if not exist "%temp%\process_lister_portable.zip" (
goto download
)
)

if not exist "%temp%\process_lister_portable.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -L https://downloads.novirusthanks.org/files/portables/process_lister_portable.zip > "process_lister_portable.zip"

cd\
cd %temp%



set mypath=%cd%\process_lister_portable.zip
Call :UnZipFile "%temp%\process_lister_portable" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %Temp%\process_lister_portable\PORTABLE\64-bit\

start ProcessLister.exe
cd\
cd %Temp%

erase /Q *.*
cls
echo for close it(Process lister portable) press enter
pause
taskkill /F /IM ProcessLister.exe /T
cls
goto begin

:ok
echo Install successful

 


:SecurityTaskManager_Setup
cls
echo checking file structure...
if exist "%Temp%\Security Task Manager\TaskMan.exe" (
if exist "%Temp%\Security Task Manager\TaskMan.exe" (
cd \

cd %Temp%\Security Task Manager\

start TaskMan.exe

cls


pause
taskkill /F /IM TaskMan.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\Security Task Manager.zip" (
if not exist "%temp%\Security Task Manager.zip" (
goto download
)
)
if not exist "%temp%\Security Task Manager.zip" (
goto download
)
)

if not exist "%temp%\Security Task Manager.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/19jQ74bRN-kW-y_lZ4alIVmx-pvh4Vtd2?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "Security Task Manager.zip"

cd\
cd %temp%



set mypath=%cd%\Security Task Manager.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %Temp%\Security Task Manager\

start TaskMan.exe
cd\
cd %Temp%

erase /Q *.*
cls
echo for close it(Security Task Manager) press enter
pause
taskkill /F /IM TaskMan.exe /T
cls
goto begin

:ok
echo Install successful




:hidden_process_finder_portable
cls
echo checking file structure...
if exist "%Temp%\hidden_process_finder_portable\PORTABLE\HiddenProcessFinder64.exe" (
if exist "%Temp%\hidden_process_finder_portable\PORTABLE\HiddenProcessFinder64.exe" (
cd \

cd %Temp%\hidden_process_finder_portable\PORTABLE\

start HiddenProcessFinder64.exe

cls


pause
taskkill /F /IM HiddenProcessFinder64.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\hidden_process_finder_portable.zip" (
if not exist "%temp%\hidden_process_finder_portable.zip" (
goto download
)
)
if not exist "%temp%\hidden_process_finder_portable.zip" (
goto download
)
)

if not exist "%temp%\hidden_process_finder_portable.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl.exe -L "https://drive.google.com/uc?export=download&confirm=KBsu&id=1TwYSAJb2xFGTQBSR_pv1bsOIN5AB2h37" > "hidden_process_finder_portable.zip"

cd\
cd %temp%



set mypath=%cd%\hidden_process_finder_portable.zip
Call :UnZipFile "%temp%\hidden_process_finder_portable" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %Temp%\hidden_process_finder_portable\PORTABLE\

start HiddenProcessFinder64.exe
cd\
cd %Temp%

erase /Q *.*
cls
echo for close it(Process lister portable) press enter
pause
taskkill /F /IM HiddenProcessFinder64.exe /T
cls
goto begin

:ok
echo Install successful


:connections_viewer_setup
cls
echo checking file structure...
if exist "%Temp%\ConnectionsViewer.exe" (
if exist "%Temp%\ConnectionsViewer.exe" (
cd \

cd %Temp%

start ConnectionsViewer.exe

cls


pause
taskkill /F /IM ConnectionsViewer.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\ConnectionsViewer.exe" (
if not exist "%temp%\ConnectionsViewer.exe" (
goto download
)
)
if not exist "%temp%\ConnectionsViewer.exe" (
goto download
)
)

if not exist "%temp%\ConnectionsViewer.exe" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1gtrmvZhzfqYbtPAy6fXbLqvVgpbAtPV3?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "ConnectionsViewer.exe"




start ConnectionsViewer.exe


cls
echo for close it(Connections Viewer) press enter
pause
taskkill /F /IM ConnectionsViewer.exe /T

erase /Q *.*
cls
goto begin

:ok
echo Install successful


:TechToolStore64
cls
echo checking file structure...
if exist "%temp%\TechToolStore64.exe" (
if exist "%temp%\TechToolStore64.exe" (
cd \

cd %temp%

start "" "TechToolStore64.exe"

cls


pause
taskkill /F /IM "TechToolStore64.exe" /T
goto begin
goto ok
)
)

if not exist "%temp%\TechToolStore64.exe" (
if not exist "%temp%\TechToolStore64.exe" (
goto download
)
)
if not exist "%temp%\TechToolStore64.exe" (
goto download
)
)

if not exist "%temp%\TechToolStore64.exe" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1_ob1No7uWHwmhD3aXp-iimG0J-2t-Ngm?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "TechToolStore64.exe"





start "" "TechToolStore64.exe"
erase /Q *.*



cls
echo for close it(Tech Tool Store) press enter
pause
taskkill /F /IM "TechToolStore64.exe" /T
goto begin

:ok
echo Install successful


:Win-UFO
cls
echo checking file structure...
if exist "%Temp%\WinUfo\Win-UFO.exe" (
if exist "%Temp%\WinUfo\Win-UFO.exe" (
cd \

cd %Temp%\WinUfo\

start Win-UFO.exe

cls


pause
taskkill /F /IM Win-UFO.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\WinUfo.zip" (
if not exist "%temp%\WinUfo.zip" (
goto download
)
)
if not exist "%temp%\WinUfo.zip" (
goto download
)
)

if not exist "%temp%\WinUfo.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1XQSwn7fyDBzLup7jBwV7RIrcCpH7NP8P?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "WinUfo.zip"

cd\
cd %temp%



set mypath=%cd%\WinUfo.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %Temp%\WinUfo\

start Win-UFO.exe
cd\
cd %Temp%

erase /Q *.*
cls
echo for close it(Ultimate Forensics Outflow) press enter
pause
taskkill /F /IM Win-UFO.exe /T
cls
goto begin

:ok
echo Install successful


:dart
cls
echo checking file structure...
if exist "%temp%\DART-2018_beta\dart.exe" (
if exist "%temp%\DART-2018_beta\dart.exe" (
cd \

cd %Temp%\DART-2018_beta\

start dart.exe

cls


pause
taskkill /F /IM dart.exe /T
cls
goto begin
goto ok
)
)

if not exist "%temp%\DART-2018_beta.zip" (
if not exist "%temp%\DART-2018_beta.zip" (
goto download
)
)
if not exist "%temp%\DART-2018_beta.zip" (
goto download
)
)

if not exist "%temp%\DART-2018_beta.zip" (
goto download
)
)
:download
echo downloading missing files.
cd \
cd %temp%


curl -L "https://www.googleapis.com/drive/v3/files/1PTrCCthS2lTPhlDcCiyCVUS4nU5iKq3J?alt=media&key=AIzaSyD5joKOoWWnjMLeGX8AYoI0Q4jJUnpjvD8" > "DART-2018_beta.zip"

cd\
cd %temp%



set mypath=%cd%\DART-2018_beta.zip
Call :UnZipFile "%temp%" "%mypath%"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



cd \

cd %Temp%\DART-2018_beta\

start dart.exe
cd\
cd %Temp%

erase /Q *.*
cls
echo for close it(Dart Forensics Tool) press enter
pause
taskkill /F /IM dart.exe /T
cls
goto begin

:ok
echo Install successful


:op30
Exit
echo you picked option 30
goto begin
:exit
@exit
 











