@echo off
set lol=%USERNAME%
@echo Installing for user: %lol%
bitsadmin /cancel votescript-download
bitsadmin /cancel requests-download
bitsadmin /transfer temp-requests https://www.python.org/ftp/python/2.7.16/python-2.7.16.msi C:\Users\%lol%\Downloads\python-2.7.16.msi
SLEEP 3
msiexec /i C:\Users\%lol%\Downloads\python-2.7.16.msi TARGETDIR=C:\Users\%lol%\Downloads\Python /qb!
bitsadmin /transfer votescript-download https://github.com/SPMNJ/Voting-Bot/raw/master/install.py C:\Users\%lol%\Downloads\install.py
@echo Loading Installer
C:\Users\%lol%\Downloads\install.py
