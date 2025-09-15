# macOS Reboot Scripts

This folder contains two different scripts for rebooting your Mac into its startup/firmware modes. The one you use depends entirely on whether you have an Intel or Apple Silicon Mac.

**To check your Mac type:** Go to the **Apple Menu > About This Mac**. It will show "Chip" (Apple Silicon) or "Processor" (Intel).

---

### 1. For Intel-based Macs (Automatic Reboot)
*   **Script:** `reboot_firmware_intel.sh`
*   **Action:** This script **automatically** reboots your Mac into the "Startup Manager," which is the screen where you can select a boot device. This is the scriptable equivalent of a UEFI firmware screen.
*   **How to Use:**
    1.  Open the Terminal app.
    2.  Navigate to this directory.
    3.  Run the command: `sh reboot_firmware_intel.sh`
    4.  Enter your administrator password when prompted. Your Mac will reboot after a 10-second countdown.

---

### 2. For Apple Silicon Macs (M1, M2, M3, etc.) - Manual Helper
*   **Script:** `reboot_options_apple_silicon_helper.sh`
*   **Action:** This is a **helper script only**. It is **not technically possible** to automatically reboot an Apple Silicon Mac into Startup Options. This script will **not** reboot your Mac.
*   **How to Use:**
    1.  Run `sh reboot_options_apple_silicon_helper.sh` in the Terminal.
    2.  It will display the manual instructions you must follow: shut down the Mac completely, then press and hold the power button until the startup options appear.
