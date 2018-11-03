@echo off
title batchOS

if exist= boot.btfile goto startup
if not exist= boot.btfile goto rsod

:rsod
cls
color cf
echo.
echo batchOS BOOT ERROR
ECHO.
ECHO batchOS COULD NOT BOOT DUE TO THE FILE
ECHO boot.btfile BEING ABSENT FROM THE SYSTEM16
ECHO DIRECTORY. IF YOU HAVE DELETED THIS FILE,
ECHO OR HAVE MOVED IT TO ANOTHER FOLDER, PLEASE
ECHO PUT THIS FILE BACK INTO THE SYSTEM16
ECHO DIRECTORY
ECHO.
ECHO COLLECTING DATA...
ping -n 12 127.0.0.0 > nul
echo Boot Crash >> crashboot.log
echo. >> crashboot.log
echo Crashed due to file: boot.btfile being absent >> crashboot.log
echo from the \SYSTEM16 Directory. >> crashboot.log
echo. >> crashboot.log
echo Crash Time and Date: %time% %date% >> crashboot.log
exit
