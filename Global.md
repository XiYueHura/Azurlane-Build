**The installation package for non-CN servers is small because these versions typically use separate OBB data files. If you only install the APK from the Release section without the original OBB data, you may encounter [this issue](https://github.com/JMBQ/azurlane/issues/34#issuecomment-3239785490). Follow the correct procedure below:**

1.  **Install the original client** for your target server and verify it can display the game update popup normally.

2.  **Copy the OBB file** using MT Manager:
    *   Navigate to: `Android → obb → [package_name]` (e.g., `com.YoStarJP.AzurLane` for JP server).
    *   Locate the `.obb` file (approx. 1GB) inside this folder.
    *   Copy this file to another directory (e.g., the `Download` folder).
    *   If you encounter permission issues:
        *   **On Emulators**: Enable Root in settings, restart, grant MT Manager permanent Root access, and try again. Most emulators won't have this prompt.
        *   **On Physical Phones**: Rooting can be complex. Use [Shizuku](https://shizuku.rikka.app/) instead. Refer to the [Shizuku User Guide](https://shizuku.rikka.app/guide/setup/) for setup instructions, preferably using wireless debugging.

3.  **After copying the OBB file**:
    *   **If your device/emulator is Rooted** and has the core patch module correctly configured with **APK signature verification disabled**, you can install the patched APK directly over the original app. Then, proceed to step 5.
    *   **If you are not Rooted**, proceed to step 4.

4.  **For non-Rooted devices**:
    *   Ensure you have successfully backed up the OBB file (from Step 2).
    *   Uninstall the original game.
    *   Install the patched version (from the Releases section).
    *   Open the game briefly until the loading screen appears, then close it.
    *   Use MT Manager to copy the backed-up OBB file back to its original location: `Android → obb → [package_name]`.

5.  Launch the game and enjoy!