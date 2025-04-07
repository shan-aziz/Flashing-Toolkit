# Flashing Toolkit v2.0

## Make flashing Easy! // Developed by Shan Aziz

---

This toolkit simplifies the process of flashing various components to your Android device using ADB and Fastboot. It provides a menu-driven interface for common flashing tasks.

---

### Features:

* **Flash Recovery:** Easily flash a custom recovery image (supports both A/B and non-A/B slot devices).
* **Flash Sideload:** Sideload ZIP packages via ADB.
* **Flash Magisk Patched Image:** Flash a Magisk patched boot image.
* **Extract boot.img using payload:** Extract the `boot.img` file from an Android firmware payload.bin file.
* **Flash GSI Rom:** Flash a Generic System Image (GSI) ROM (supports both A/B and non-A/B slot devices).

---

### Prerequisites:

Before using this toolkit, ensure you have the following installed and configured on your computer:

* **ADB and Fastboot:** These are essential tools for communicating with your Android device in bootloader mode. You can usually obtain them as part of the Android SDK Platform Tools. Make sure they are added to your system's PATH environment variable.
* **Device Drivers:** Ensure you have the correct USB drivers installed for your Android device.

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
