@echo off
echo ######################################################################
echo # IMPORTANT: Automatic reboot to BIOS setup is not possible.         #
echo #                                                                    #
echo # This script will perform a STANDARD REBOOT in 15 seconds.          #
echo # You must press the correct key during startup to enter the BIOS.   #
echo #                                                                    #
echo # ==> Common Keys: Del, F1, F2, F10, Esc                             #
echo #                                                                    #
echo # Be ready to press the key as soon as the computer screen appears.  #
echo ######################################################################
echo.
shutdown /r /t 15
echo.
echo Reboot command issued. If Windows does not reboot, please
echo right-click this file and select "Run as administrator".
pause
