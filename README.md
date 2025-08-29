# Azurlane JMBQ 一键构建

**声明：本人不会啥代码，只能勉强看懂，大部分是借助Ai完成的修改，存在很多问题，有些部分很抽象，欢迎各位大佬提出建议**

此仓库模板允许您使用 GitHub Actions 来构建 Perseus。这对于不想在自己机器上搭建构建环境的人来说非常有用。

## 支持的版本
- **国服 (CN)**: com.bilibili.azurlane （构建正常，MuMu模拟器未闪退，功能正常使用；Bug：倍攻对敌人也生效，激情互秒了属于是）
- **国际服 (EN)**: com.YoStarEN.AzurLane （构建正常，其余未测试）
- **日服 (JP)**: com.YoStarJP.AzurLane （构建正常，游戏加载正常，功能未测试）
- **韩服 (KR)**: kr.txwy.and.blhx （未测试）
- **台服 (TW)**: com.hkmanjuu.azurlane.gp （未测试）


**其他服务器客户端在考虑支持中，B服已可在release中下载**

## 重要说明
- 脚本会自动从 APKPure 下载最新的基础 APK 文件，对于国服，只会从固定的链接下载 APK 文件
- **在任何情况下**，都不会有任何 APK 文件被上传到此仓库，以避免 DMCA（数字千年版权法）侵权问题。
- 如果您想参与贡献，请先 Fork 本仓库。

## 如何设置
1.  使用此仓库作为模板，创建一个新的 **私有仓库** ([操作指南](https://docs.github.com/zh/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template))。
2.  转到新创建的仓库的 Settings -> Actions -> General -> Workflow permissions，设置 **Read and Write**（读写）权限。
3.  大功告成！

## 如何构建
1.  进入 Actions -> All workflows -> Perseus Build。
2.  选择您想要构建的区域版本，并运行工作流。
3.  从草稿版本发布Releases中下载构建好的 APK 文件。

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
