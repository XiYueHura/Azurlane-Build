**非国服客户端的安装包体积较小，因为这些版本通常使用独立的OBB数据文件。如果仅安装Release中的APK而未准备原版OBB数据，可能会遇到[此问题](https://github.com/JMBQ/azurlane/issues/34#issuecomment-3239785490)，请按以下步骤操作**

---

1.  **安装原版客户端**：为目标服务器安装原版客户端，并确认能正常显示游戏更新弹窗
    *   **若设备已Root**且已配置核心破解模块（**已禁用APK签名验证**），可直接安装修改版APK覆盖原版应用，随后跳至第4步
    *   **若未Root**，请继续执行第2步

---

2.  **复制OBB文件**（建议使用[MT管理器](https://mt2.cn/)）：
    *   定位至路径：`Android → obb → [包名]` （例如日服包名为 `com.YoStarJP.AzurLane`）
    *   在目录中查找较大的 `.obb` 文件（约1GB）
    *   将该文件复制至其他目录（如 `Download` 文件夹）
    *   **若遇权限问题**：
        *   **模拟器环境**：在设置中开启Root权限，重启MT管理器并授予其永久Root权限后重试（模拟器通常不会出现此提示）
        *   **真机环境**：获取Root权限较为复杂，推荐使用 [Shizuku](https://shizuku.rikka.app/zh-hans/) ，按照 [Shizuku 用户指南](https://shizuku.rikka.app/zh-hans/guide/setup/) 进行配置，建议优先采用"无线调试"方式激活

---

3.  **完成OBB文件备份后**：
    *   确认已妥善备份OBB文件（第2步操作）
    *   卸载原版游戏
    *   安装修改版（从Releases页面下载）
    *   启动游戏至加载画面出现后退出
    *   使用MT管理器将备份的OBB文件移动回原路径：`Android → obb → [包名]`

---

4.  **启动游戏🎮**