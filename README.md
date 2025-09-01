# Azurlane JMBQ 一键构建

<img src="https://count.getloli.com/@azurlanejmbq?name=azurlanejmbq&theme=moebooru&padding=7&offset=0&align=top&scale=1&pixelated=1&darkmode=auto" alt=":name" />

**声明：本人小白，经过AI大人的帮助才写出了这堆，所以该仓库有些部分很抽象，欢迎各位大佬提出Issue改善**

此仓库模板允许您使用 GitHub Actions 来构建 JMBQ客户端。这对于不想在自己机器上搭建构建环境或难以理解教程的人来说非常有用。

## 关于外服 - 请务必阅读，否则你可能无法进入游戏！

[外服使用方法](https://github.com/XiYueHura/Azurlane-Build/blob/main/Global.md)

## 支持的版本

如果出现权限申请界面未弹出或者悬浮窗不显示的问题请提出issue，本人精力有限有时候可能会弄错

- **B服 (Bilibili)**: com.bilibili.azurlane （构建正常，加载正常，MuMu模拟器未闪退，功能正常使用）
- **应用宝服 (Tencent)**: com.tencent.tmgp.bilibili.blhx （构建正常，加载正常，MuMu模拟器未闪退，功能未测试）
- **4399服 (4399)**: com.bilibili.blhx.m4399 （构建正常，加载正常，MuMu模拟器未闪退，功能未测试）
- **国际服 (EN)**: com.YoStarEN.AzurLane （构建正常，游戏加载正常，功能未测试，欢迎测试）
- **日服 (JP)**: com.YoStarJP.AzurLane （构建正常，游戏加载正常，功能未测试，欢迎测试）
- **台服 (TW)**: com.hkmanjuu.azurlane.gp （构建正常，游戏加载正常，功能未测试，欢迎测试）

## 不支持或存在问题的版本

- **韩服 (KR)**: kr.txwy.and.blhx （已构建，运行异常，点开后没有任何反应，也许是触发反作弊了，不会解决）
- **华为服（Huawei）** com.bilibili.blhx.huawei （已构建，运行异常，点开后第一个页面卡住，初步判断是修改游戏后APK签名不是官方的，导致HMS Core初始化失败从而无法进入游戏）

可能存在的Bug：请参考[Issue](https://github.com/JMBQ/azurlane/issues)

**其他服务器客户端在火热支持中，如有需要请提供安装包链接，部分服可能存在问题，可在Release中查看已经构建的版本进行下载**

## 重要说明
- 脚本会自动从 APKPure 下载最新的基础 APK 文件，对于国服，只会从固定的链接下载 APK 文件
- **在任何情况下**，都不会有任何 APK 文件被上传到此仓库，以避免 DMCA（数字千年版权法）侵权问题。
- 如果您想参与贡献，请先 Fork 本仓库。

## 预览
**B服**
<img width="1633" height="919" alt="472a1cb6-48e9-4366-8df3-13ac0c2358dc" src="https://github.com/user-attachments/assets/3797812c-a3a7-42c1-a1af-17a464c6daf8" />
<img width="1635" height="969" alt="{75C6C3EE-5474-488D-BDE6-62138933B16E}" src="https://github.com/user-attachments/assets/581eb9dc-f2da-4175-bd43-4de2353c5dcb" />

**4399服**
<img width="1635" height="968" alt="{3D81AEB5-C303-4F5E-8A52-9C785F002A0B}" src="https://github.com/user-attachments/assets/0c72f076-d29f-4cb0-a127-77d8c2ffc59d" />

**日服**
<img width="1635" height="969" alt="QQ20250829-205032" src="https://github.com/user-attachments/assets/583c27c2-db2c-4e3c-9f27-42e3d9db1bd0" />

## 参考内容以及仓库
1. https://github.com/JMBQ/azurlane
2. https://github.com/n0k0m3/PerseusCI
