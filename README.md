# Perseus 构建项目

此仓库模板允许您使用 GitHub Actions 来构建 Perseus。这对于不想在自己机器上搭建构建环境的人来说非常有用。

## 碧蓝航线（Azur Lane）区域版本
- **国际服 (EN)**: com.YoStarEN.AzurLane
- **日服 (JP)**: com.YoStarJP.AzurLane
- **韩服 (KR)**: kr.txwy.and.blhx
- **台服 (TW)**: com.hkmanjuu.azurlane.gp
- **国服 (CN)**: com.bilibili.azurlane

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
3.  从草稿版本发布 (draft releases) 中下载构建好的 APK 文件。