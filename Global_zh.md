**外服的安装包很小是因为外服一般都是有单独的obb数据包，如果你只下载了release中的apk安装而没有原版的obb数据包就可能会出现[这个情况](https://github.com/JMBQ/azurlane/issues/34#issuecomment-3239785490)，所以正确使用流程应该是：**

1. 安装对应服的原版客户端，并确定能够正常显示更新游戏的弹窗。

2. 使用MT管理器复制该客户端的obb文件，操作流程：打开MT管理器，依次打开Android → obb → xxx.xxx.xxx（该服务器客户端的包名就是文件夹名称，如日服的为：com.YoStarJP.AzurLane），在文件夹内能看到一个以obb结尾的文件，大小1G左右，将该文件复制到其他目录，例如根目录下的Download文件夹内，如果有以下提示无法继续，模拟器请在设置打开Root，重启后永久授权MT管理器Root权限后再次尝试即可（模拟器一般不会有这个提示的）；如果你是手机，由于Root对于大部分手机过于复杂，请使用Shiziku，[Shizuku](https://shizuku.rikka.app/zh-hans/)的使用方法可以参考[Shizuku用户手册](https://shizuku.rikka.app/zh-hans/guide/setup/)，优先使用无线调试激活。

   ![Screenshot_2025-08-31-17-48-05-886_bin mt plus](https://github.com/user-attachments/assets/d1e6f963-1c57-4ed0-9b4e-7b07041571bc)

3. 复制完文件后，如果你的模拟器或手机已经Root，并且正确的配置了核心破解模块，打开了**禁用APK签名验证**，可不用卸载原版，直接覆盖安装，然后跳转第五步；如果你没有Root，或者看不懂前面的内容，那么请看第四步。

4. 请确认你已在第二步中已完成obb文件的复制备份，如果确认完成，请直接卸载原版游戏，否则重新操作第二步，卸载后安装补丁好的版本（release中发布的版本），打开一次游戏，等几秒出现加载页面之后退出即可，再次打开MT管理器,将之前复制出来的obb文件复制回Android → obb → xxx.xxx.xxx（还是之前的文件夹）

5. 打开游戏，Enjoy!
