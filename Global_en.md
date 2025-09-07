**The installation package for non-CN servers is smaller because these versions typically use separate OBB data files. If you only install the APK from the Release section without the original OBB data, you may encounter [this issue](https://github.com/JMBQ/azurlane/issues/34#issuecomment-3239785490). Please follow the steps below:**

---

1.  **First, install the original client**: Install the original client for the server you want to play and make sure it can display the game update popup normally.
    *   **If your device/emulator is already Rooted** and the core patch module is properly configured (**APK signature verification disabled**), you can directly install the modified APK to overwrite the original app, then skip to step 4.
    *   **If it is not Rooted**, continue to step 2.

---

2.  **Copy the OBB file** (using [MT Manager](https://mt2.cn/)):
    *   Navigate to this path: `Android → obb → [package name]` (e.g., for the JP server, it is `com.YoStarJP.AzurLane`).
    *   Look for the `.obb` file (about 1GB) in this folder.
    *   Copy this file to another directory (e.g., the `Download` folder).
    *   **If you encounter permission issues**:
        *   **On an emulator**: Enable Root permissions in the settings, restart MT Manager, grant MT Manager permanent Root permissions, and try again (emulators generally should not prompt for this).
        *   **On a physical phone**: Obtaining Root permissions can be complicated. It is recommended to use [Shizuku](https://shizuku.rikka.app/zh-hans/). Follow the [Shizuku User Guide](https://shizuku.rikka.app/zh-hans/guide/setup/) for setup instructions. It is advised to activate it using the "Wireless Debugging" method first.

---

3.  **After copying the OBB file**:
    *   Confirm that the OBB file has been backed up (from step 2).
    *   Uninstall the original game.
    *   Install the modified version (downloaded from Releases).
    *   Open the game once and wait until the loading screen appears, then exit.
    *   Use MT Manager to move the backed-up OBB file back to its original location: `Android → obb → [package name]`.

---

4.  **Azur Lane! 🎮**