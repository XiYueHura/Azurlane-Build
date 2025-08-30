# Azurlane JMBQ 一键构建

<img src="https://count.getloli.com/@azurlanejmbq?name=azurlanejmbq&theme=moebooru&padding=7&offset=0&align=top&scale=1&pixelated=1&darkmode=auto" alt=":name" />

**声明：本人小白，经过AI大人的帮助才写出了这堆，所以该仓库有些部分很抽象，欢迎各位大佬提出Issue改善**

此仓库模板允许您使用 GitHub Actions 来构建 JMBQ客户端。这对于不想在自己机器上搭建构建环境或难以理解教程的人来说非常有用。

## 支持的版本
- **国服 (CN)**: com.bilibili.azurlane （构建正常，MuMu模拟器未闪退，功能正常使用）
- **国际服 (EN)**: com.YoStarEN.AzurLane （已构建，未测试）
- **日服 (JP)**: com.YoStarJP.AzurLane （构建正常，游戏加载正常，功能未测试）
- **韩服 (KR)**: kr.txwy.and.blhx （已构建，运行异常，点开后没有任何反应，原因未知）
- **台服 (TW)**: com.hkmanjuu.azurlane.gp （已构建，未测试）

可能存在的Bug：请参考[Issue](https://github.com/JMBQ/azurlane/issues)

**其他服务器客户端在火热支持中，如有需要请提供安装包链接，可在Release中查看已经构建的版本进行下载**

## 重要说明
- 脚本会自动从 APKPure 下载最新的基础 APK 文件，对于国服，只会从固定的链接下载 APK 文件
- **在任何情况下**，都不会有任何 APK 文件被上传到此仓库，以避免 DMCA（数字千年版权法）侵权问题。
- 如果您想参与贡献，请先 Fork 本仓库。

## 如何自行构建
1.  进入 Actions -> All workflows -> JMBQ Build。
2.  选择您想要构建的区域版本，并运行工作流。
3.  从Releases中下载构建好的分卷压缩文件。

## 预览
**B服**
<img width="1633" height="919" alt="472a1cb6-48e9-4366-8df3-13ac0c2358dc" src="https://github.com/user-attachments/assets/3797812c-a3a7-42c1-a1af-17a464c6daf8" />
**日服**
<img width="1635" height="969" alt="QQ20250829-205032" src="https://github.com/user-attachments/assets/583c27c2-db2c-4e3c-9f27-42e3d9db1bd0" />

## 参考内容以及仓库
1. https://github.com/Egoistically/Perseus
2. https://github.com/JMBQ/azurlane
3. https://github.com/n0k0m3/PerseusCI
4. https://github.com/feathers-l/AzurLaneBiliBili-Fix
5. https://github.com/feathers-l/azurlane
