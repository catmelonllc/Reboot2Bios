#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script needs to be run with sudo. Please enter your password."
   exec sudo "$0" "$@"
fi
echo "######################################################################"
echo "# This script will reboot your INTEL MAC to the Startup Manager.     #"
echo "######################################################################"
echo ""
echo "Rebooting to Startup Manager in 10 seconds. Press Ctrl+C to cancel."
for i in {10..1}; do
   echo -ne "Rebooting in $i... \r"
   sleep 1
done
echo -e "\nRebooting now..."
bless --setBoot --nextonly --tofirmware
reboot
