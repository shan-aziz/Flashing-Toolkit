# Flashing-Toolkit

## Android Flashing Toolkit

**Download Link!!!**

[https://www.pling.com/p/1857509](https://www.pling.com/p/1857509)

Developed by Shan Aziz

Let's make flashing Easy!

---

This toolkit is developed to help users flash custom ROMs, recoveries, sideload flashable ZIPs, and Magisk files without typing a single line of code.

### Features:

1.  **Flash Custom Recovery:** Easily flash custom recovery images (supports both A/B and non-A/B slot devices).
2.  **Flash Sideload:** Sideload ROMs and other ZIP packages via ADB.
3.  **Flash Magisk Patch Img:** Flash a Magisk patched boot image.
4.  **Extract boot.img using payload:** Extract the `boot.img` file from an Android firmware payload.bin file.
5.  **Flash GSI Rom:** Flash a Generic System Image (GSI) ROM (supports both A/B and non-A/B slot devices).

---

### Prerequisite:

Download and install the latest ADB drivers and Minimal ADB and Fastboot on your computer.

**Important!** If you want to extract other payloads, please delete the previous extraction in the `payload` folder to avoid any issues.

---

### Attention!!!

**Do not reflash recovery after installing Android 12/12L/12.1 ROMs; it will cause bootloops.**

---

### How to Use:

1.  **Download the Script:** Save the provided code as a `.bat` file (e.g., `flash_toolkit.bat`).
2.  **Place Necessary Files:** For flashing recovery, sideload packages, Magisk patched images, or GSI ROMs, place the corresponding `.img` or `.zip` files in the same directory as the `flash_toolkit.bat` script, or in a location you can easily navigate to. For extracting the boot image from a payload, place the `payload.bin` file in the same directory as the script.
3.  **Enable Developer Options and USB Debugging:** On your Android device, enable Developer Options (usually by tapping the "Build number" multiple times in the "About phone" section of the Settings app). Then, enable USB Debugging within the Developer Options.
4.  **Connect Your Device:** Connect your Android device to your computer via a USB cable.
5.  **Open the Toolkit:** Double-click the `flash_toolkit.bat` file to run it.
6.  **Follow the Menu:** The toolkit will present a menu of options. Use the number keys to select the desired action and press Enter.
7.  **Device Selection (If Applicable):** For some options, the toolkit will check for connected devices using `fastboot devices` or `adb devices`. Ensure your device is recognized.
8.  **File Selection:** The toolkit uses a simple file selection dialog to allow you to choose the files you want to flash or the payload file you want to extract from.
9.  **Follow On-Screen Instructions:** The toolkit will guide you through the necessary steps for each selected option.

---

### Menu Options:

The main menu provides the following choices:
