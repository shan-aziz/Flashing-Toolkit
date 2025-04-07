```markdown
# Flashing-Toolkit

## Android Flashing Toolkit

**Download Link!!!**

[https://www.pling.com/p/1857509](https://www.pling.com/p/1857509)

Developed by Shan Aziz
Make flashing Easy!

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

```
		Select Options:
		-----------------------
		1). Flash Recovery
		2). Flash Sideload
		3). Flash Magisk Patched Image
		4). Extract boot.img using payload
		5). Flash GSI Rom
```

**Detailed Breakdown of Options:**

* **1). Flash Recovery:**
    * Prompts you to select whether your device uses A/B slots or not.
    * Uses a file dialog to select the recovery image file (`.img`).
    * For A/B slot devices, it flashes the recovery to both `recovery`, `boot_a`, and `boot_b` partitions and then attempts to boot into the flashed recovery.
    * For non-A/B slot devices, it flashes the recovery to the `recovery` and `boot` partitions and then attempts to boot into the flashed recovery.

* **2). Flash Sideload:**
    * Uses a file dialog to select the ZIP package to sideload.
    * Executes the `adb sideload` command. Your device needs to be in recovery mode for this option.

* **3). Flash Magisk Patched Image:**
    * Uses a file dialog to select the Magisk patched boot image file (`.img`).
    * Flashes the selected image to the `boot` partition.

* **4). Extract boot.img using payload:**
    * Uses a file dialog to select the `payload.bin` file from your device's firmware.
    * Navigates to the `payload` directory (assuming `payload-dumper-go.exe` is present in a subfolder named `payload`).
    * Executes the `payload-dumper-go` tool to extract the contents of the payload, including the `boot.img`. The extracted files will be located in a `payload` folder. **Note:** This option assumes you have a tool named `payload-dumper-go.exe` located in a subfolder named `payload` within the same directory as the script. You may need to download this tool separately.

* **5). Flash GSI Rom:**
    * Prompts you to select whether your device uses A/B slots or not.
    * Uses a file dialog to select the GSI ROM image file (`.img`).
    * For A/B slot devices:
        * Reboots the device to fastboot mode.
        * Deletes the logical partitions `product`, `product_a`, and `product_b`.
        * Flashes the selected GSI image to the `system` partition.
        * Reboots the device to recovery.
    * For non-A/B slot devices:
        * Reboots the device to fastboot mode.
        * Deletes the logical partition `product`.
        * Flashes the selected GSI image to the `system` partition.
        * Reboots the device to recovery.

---

### Disclaimer:

Flashing custom ROMs, recoveries, or other modifications to your Android device can be risky and may lead to data loss or device malfunction if not done correctly. Proceed with caution and ensure you understand the risks involved. The developer of this toolkit is not responsible for any damage that may occur to your device while using this tool.

---

### Developed by:

Shan Aziz

---

### Version:

v2.0
```
