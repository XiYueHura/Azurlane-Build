# Azur Lane JMBQ Build

<img src="https://count.getloli.com/@azurlanejmbq?name=azurlanejmbq&theme=moebooru&padding=7&offset=0&align=top&scale=1&pixelated=1&darkmode=auto" alt=":name" />

**中文版本**
[README](https://github.com/XiYueHura/Azurlane-Build/blob/main/README_zh.md)

**Disclaimer: I am a novice. This repository was created with the help of AI, so some parts might seem abstract. Welcome to submit Issues for improvements.**

This repository template allows you to use GitHub Actions to build the JMBQ client. It is very useful for those who do not want to set up a build environment on their own machine or find tutorials difficult to understand.

## Regarding Non-CN server - Please read this, otherwise you might not be able to enter the game!

[Usage Guide for Non-CN server](https://github.com/XiYueHura/Azurlane-Build/blob/main/Global.md)

## Supported Versions

If you encounter issues like the permission request screen not popping up or the floating window not displaying, please submit an issue. My energy is limited, and I might make mistakes sometimes.

- **Bilibili Server (CN)**: com.bilibili.azurlane (Builds successfully, loads normally, no crashes on MuMu emulator, features work correctly)
- **Tencent/MyApp Server (CN)**: com.tencent.tmgp.bilibili.blhx (Builds successfully, loads normally, no crashes on MuMu emulator, features not tested)
- **4399 Server (CN)**: com.bilibili.blhx.m4399 (Builds successfully, loads normally, no crashes on MuMu emulator, features not tested)
- **American Server (EN)**: com.YoStarEN.AzurLane (Builds successfully, game loads normally, features not tested, welcome to test)
- **Japanese Server (JP)**: com.YoStarJP.AzurLane (Builds successfully, game loads normally, features not tested, welcome to test)
- **Taiwan Server (TW)**: com.hkmanjuu.azurlane.gp (Builds successfully, game loads normally, features not tested, welcome to test)

## Unsupported or Problematic Versions

- **Korean Server (KR)**: kr.txwy.and.blhx (Built, but runs abnormally. No response upon clicking, possibly triggered anti-cheat. Won't be fixed.)
- **Huawei Server (CN)**: com.bilibili.blhx.huawei (Built, but runs abnormally. Gets stuck on the first screen. Preliminary judgment is that modifying the game results in an APK signature that is not official, causing HMS Core initialization to fail and preventing entry into the game.)

Potential Bugs: Please refer to [Issues](https://github.com/JMBQ/azurlane/issues)

**Support for other server clients is actively being worked on. If needed, please provide the installation package link. Some servers might have issues; you can check the Releases section to download already built versions.**

## Important Notes
- The script will automatically download the latest base APK file from APKPure. For the CN servers, it will only download APK files from fixed links.
- **Under no circumstances** will any APK files be uploaded to this repository to avoid DMCA (Digital Millennium Copyright Act) infringement issues.
- If you wish to contribute, please Fork this repository first.

## Preview
**Bilibili Server**
<img width="1633" height="919" alt="472a1cb6-48e9-4366-8df3-13ac0c2358dc" src="https://github.com/user-attachments/assets/3797812c-a3a7-42c1-a1af-17a464c6daf8" />
<img width="1635" height="969" alt="{75C6C3EE-5474-488D-BDE6-62138933B16E}" src="https://github.com/user-attachments/assets/581eb9dc-f2da-4175-bd43-4de2353c5dcb" />

**4399 Server**
<img width="1635" height="968" alt="{3D81AEB5-C303-4F5E-8A52-9C785F002A0B}" src="https://github.com/user-attachments/assets/0c72f076-d29f-4cb0-a127-77d8c2ffc59d" />

**Japanese Server**
<img width="1635" height="969" alt="QQ20250829-205032" src="https://github.com/user-attachments/assets/583c27c2-db2c-4e3c-9f27-42e3d9db1bd0" />

## Credits
1. https://github.com/JMBQ/azurlane
2. https://github.com/n0k0m3/PerseusCI
