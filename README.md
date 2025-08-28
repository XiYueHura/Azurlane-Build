# Azurlane Perseus

**声明：本人不会啥代码，只能勉强看懂，大部分是借助Ai完成的修改，存在很多问题，有些部分很抽象，欢迎各位大佬提出建议**

此仓库模板允许您使用 GitHub Actions 来构建 Perseus。这对于不想在自己机器上搭建构建环境的人来说非常有用。

## 碧蓝航线（Azur Lane）区域版本
- **国际服 (EN)**: com.YoStarEN.AzurLane （未测试）
- **日服 (JP)**: com.YoStarJP.AzurLane （未测试）
- **韩服 (KR)**: kr.txwy.and.blhx （未测试）
- **台服 (TW)**: com.hkmanjuu.azurlane.gp （未测试）
- **国服 (CN)**: com.bilibili.azurlane （构建正常，功能似乎异常？MuMu模拟器未闪退，皮肤功能失效，其余功能未测试）

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
<img width="1635" height="969" alt="d031d6128e7efde74252d5486f9b99ee" src="https://github.com/user-attachments/assets/45f6deb9-b9e7-41c3-9155-bc13a9e22d97" />
<img width="1635" height="969" alt="19453812-6fb6-4207-99fc-ce033fda3b79" src="https://github.com/user-attachments/assets/0e6f96d2-6027-4a70-9147-36b4d371e7cd" />

## 参考内容以及仓库
1. https://github.com/Egoistically/Perseus
2. https://github.com/n0k0m3/PerseusCI
3. https://github.com/feathers-l/AzurLaneBiliBili-Fix
4. https://github.com/feathers-l/azurlane
