<div align="center">
    <img src="https://count.getloli.com/@azurlanejmbq?name=azurlanejmbq&theme=moebooru&padding=7&offset=0&align=top&scale=1&pixelated=1&darkmode=auto" alt="访问计数喵~" />
</div>

<center>

# ♿ AzurLane JMBQ 构建发布

[简体中文](https://github.com/XiYueHura/Azurlane-Build/blob/main/README.md) | [ENGLISH](https://github.com/XiYueHura/Azurlane-Build/blob/main/README_en.md)

**🎉 所有客户端的 JMBQ 2.8 版本都已经更新啦！快去Release里看看吧~**

> **⚠️ 警告：**
使用Mod可能会有未知的风险哦，如果指挥官一定要用的话，要记住这句话喵：
用就别怕，怕就别用，用完被封了不要哭唧唧喵~

> **📝 小贴士喵：** 
这个仓库只是把 JMBQ 作者发布的Mod整合到游戏里然后发布出来，并不是Mod的原发布仓库；如果指挥官在使用时遇到了除了游戏进不去以外的问题，比如功能失效之类的，应该去 JMBQ 大佬的Mod仓库那里提出Issue，不要在这里提喵

---

</center>

**🌍 如果想玩外服的话 - 一定要看这里喵，不然可能进不去游戏喵！**

 - 👉 [外服使用方法点这里喵](https://github.com/XiYueHura/Azurlane-Build/blob/main/Global.md)

---

## 🎮 支持的版本喵

> ⚠️ 如果出现权限申请界面没弹出来或者悬浮窗不显示的问题，请提出issue喵！精力有限，有时候可能会弄错喵

**✅ 代表正常 | ❌ 代表无法运行或者有问题 | ❔ 代表不确定或者还没测试喵~**  
（因为本人只玩B服，所以其他服务器只测试游戏能不能正常加载，功能要指挥官自己测试喵~）

> **⚠️ 关于部分服务器的登陆问题：**
由于重新打包编译后的APK文件与原版APK的签名是不一样的，使用在第三方授权登陆时一般都是不会成功的，例如应用宝服，手机上使用时会拉起QQ授权登录，然后会提示非官方应用造成无法登录，所以请使用模拟器游玩，使用扫码登陆即可

**🔥其他服务器的客户端正在努力支持中喵！如果需要的话请提供安装包链接～部分服可能有问题，可以在Release里查看已经构建的版本进行下载～**

| 服务器            | 包名                          | JMBQ版本 | 状态                      |
|-------------------|-------------------------------|----------|---------------------------|
| **B服 (Bilibili)** | com.bilibili.azurlane         | 2.8      | 构建✅ <br>加载✅ <br>功能✅ |
| **应用宝服 (Tencent)** | com.tencent.tmgp.bilibili.blhx | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **4399服 (4399)** | com.bilibili.blhx.m4399       | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **小米服 (Xiaomi)** | com.bilibili.blhx.mi          | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **九游服 (Uc)**   | com.bilibili.blhx.uc          | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **Vivo服 (Vivo)**   | com.bilibili.blhx.vivo        | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **OPPO服 (OPPO)**   | com.bilibili.blhx.nearme.gamecenter        | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **美服 (EN)**     | com.YoStarEN.AzurLane        | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **日服 (JP)**     | com.YoStarJP.AzurLane        | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **台服 (TW)**     | com.hkmanjuu.azurlane.gp     | 2.8      | 构建✅ <br>加载✅ <br>功能❔ |
| **韩服 (KR)**     | kr.txwy.and.blhx             | 2.7      | 构建✅ <br>加载❌ <br>功能❌ |
| **华为服 (Huawei)** | com.bilibili.blhx.huawei     | 2.7      | 构建✅ <br>加载❌ <br>功能❌ |

### 🚧 有问题的版本喵：
- 🫠 **韩服**点开后没有任何反应，可能是触发反作弊了喵，人家不会喵
- 😵 **华为服**点开后第一个页面卡住了，大概是修改游戏后APK签名不是官方的，导致HMS Core初始化失败进不去游戏了喵，人家也不会喵

---

## 🐛 可能存在的Bug喵

**请先看看 [Issue区](https://github.com/JMBQ/azurlane/issues) 有没有指挥官遇到的问题喵～**

---

## 📚 参考的内容和仓库喵
1. [JMBQ/azurlane](https://github.com/JMBQ/azurlane)  
2. [n0k0m3/PerseusCI](https://github.com/n0k0m3/PerseusCI)