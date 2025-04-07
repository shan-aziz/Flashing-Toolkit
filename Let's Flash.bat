@echo off
:start
cls
mode con cols=82 lines=33
color 07
set "_title= Flashing Toolkit v2.0 %uivr%"
title %_title%
set _dMode=Manual
set _ReAR=0
set _AUR=0
set "line3=____________________________________________________________"
echo.
echo           %line3%
echo.
echo       		[1m #Make flashing Easy! // Developed by Shan Aziz 
echo [0m[0m
echo           %line3%
echo.
echo [92m       ____                                    _____                         
echo [92m      / __/  /7  _   __  /7  ()  _     _      /_  _/  _   _   /7  /7   ()  /7
echo [92m     / _/   // ,'o/ (c' / \ /7  / \/7,'o\      / /  ,'o\,'o\ //  //_7 /7  /_7
echo [92m    /_/    //  \_,7/__)/n_///  /_n_/ \_,'     /_/   \_,'\_,'//  //\\ //  //  
echo [92m                                     _//                                                                                                                                
echo [0m[0m
ECHO 		Select Options:
ECHO 		-----------------------
ECHO 		1). Flash Recovery
ECHO 		2). Flash Sideload
ECHO 		3). Flash Magisk Patched Image
ECHO 		4). Extract boot.img using payload
ECHO 		5). Flash GSI Rom
set choice=
echo.
echo           %line3%
echo.
set /p 		choice=">           Choose a menu option, or 0 to Exit: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='0' goto exit
if '%choice%'=='1' goto recovery
if '%choice%'=='2' goto sideload
if '%choice%'=='3' goto magisk
if '%choice%'=='4' goto payload
if '%choice%'=='5' goto GSI
ECHO "%choice%" is not valid, try again
ECHO.
pause
goto start


:GSI
set _dMode=Manual
set _ReAR=0
set _AUR=0
ECHO Select Options:
ECHO -----------------------
ECHO 1). A/B Slot Device
ECHO 2). Non A/B Slot Device
set choice=
ECHO -----------------------
set /p choice=Please select an option:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto A_GSI
if '%choice%'=='2' goto B_GSI
ECHO "%choice%" is not valid, try again
ECHO.
pause
goto recovery

:A_GSI

set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot reboot fastboot
fastboot delete-logical-partition product
fastboot delete-logical-partition product_a
fastboot delete-logical-partition product_b
fastboot flash system "%file%"
fastboot reboot recovery
pause
goto start

:B_GSI

set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot reboot fastboot
fastboot delete-logical-partition product
fastboot flash system "%file%"
fastboot reboot recovery
pause
goto start


:recovery
		ECHO Select Options:
		ECHO -----------------------
		ECHO 1). A/B Slot Recovery
		ECHO 2). Non A/B Slot Recovery
		set choice=
		ECHO -----------------------
		set /p choice=Please select an option:
		if not '%choice%'=='' set choice=%choice:~0,1%
		if '%choice%'=='1' goto A
		if '%choice%'=='2' goto B
		ECHO "%choice%" is not valid, try again
		ECHO.
pause
goto recovery

:A

set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot devices
fastboot flash recovery "%file%"
fastboot flash boot_a "%file%"
fastboot flash boot_b "%file%"
fastboot boot "%file%"
pause
goto start


:B
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot devices
fastboot flash recovery "%file%"
fastboot boot "%file%"
pause
goto start



:sideload
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot devices
adb sideload "%file%"
pause
goto start


:magisk
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd adb
fastboot devices
fastboot flash boot "%file%"
pause
goto start


:payload
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"

cd payload
payload-dumper-go "%file%"
ECHO Check the payload folder for Extracted Files
pause
goto start


exit:
pause >nul
