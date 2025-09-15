#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This file needs to be run with sudo. Please enter your password."
   exec sudo "$0" "$@"
fi
echo "######################################################################"
echo "# IMPORTANT: Automatic reboot to BIOS setup is not possible.         #"
echo "#                                                                    #"
echo "# This script will perform a STANDARD REBOOT.                        #"
echo "# You must press the correct key during startup to enter the BIOS.   #"
echo "#                                                                    #"
echo "# ==> Common Keys: Del, F1, F2, F10, Esc                             #"
echo "######################################################################"
echo ""
echo "Rebooting in 10 seconds. Press Ctrl+C to cancel."
for i in {10..1}; do
   echo -ne "Rebooting in $i... \r"
   sleep 1
done
echo -e "\nRebooting now... Get ready to press your BIOS key!"
reboot
