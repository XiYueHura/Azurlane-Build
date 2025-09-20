**The installation package for non-Chinese server clients is smaller in size because these versions typically use separate OBB data files. If you only install the APK from the Release without preparing the original OBB data, you may encounter [this issue](https://github.com/JMBQ/azurlane/issues/34#issuecomment-3239785490). Please follow the steps below:**

---

1.  **Install the original client**: Install the original client for the target server and confirm that the game update popup appears normally.
    *   **If the device is rooted** and has the core patch module configured (**APK signature verification disabled**), you can directly install the modified APK to overwrite the original application, then skip to step 4.
    *   **If not rooted**, proceed to step 2.

---

2.  **Copy the OBB file** (It is recommended to use [MT Manager](https://mt2.cn/)):
    *   Navigate to the path: `Android → obb → [package name]` (For example, the Japanese server package name is `com.YoStarJP.AzurLane`).
    *   Locate the large `.obb` file (approximately 1GB) in this directory.
    *   Copy this file to another directory (such as the `Download` folder).
    *   **If you encounter permission issues**:
        *   **On an emulator**: Enable Root permissions in the settings, restart MT Manager, grant MT Manager permanent Root permissions, and try again (emulators usually do not prompt for this).
        *   **On a physical device**: Obtaining Root permissions is more complex. It is recommended to use [Shizuku](https://shizuku.rikka.app/). Follow the [Shizuku User Guide](https://shizuku.rikka.app/guide/setup/) for configuration. It is advised to use the "Wireless Debugging" method for activation first.

---

3.  **After backing up the OBB file**:
    *   Confirm that the OBB file has been properly backed up (step 2 operation).
    *   Uninstall the original game.
    *   Install the modified version (downloaded from the Releases page).
    *   Launch the game until the loading screen appears, then exit.
    *   Use MT Manager to move the backed-up OBB file back to its original path: `Android → obb → [package name]`.

---

4.  **Launch the game 🎮**