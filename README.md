<div align="center">
  <img src="https://count.getloli.com/@azurlanejmbq?name=azurlanejmbq&theme=moebooru&padding=7&offset=0&align=top&scale=1&pixelated=1&darkmode=auto" alt="访问计数" />
  <h3 align="center">Azurlane Build</h3>

  ![forks](https://img.shields.io/github/forks/Chtholly344/Azurlane-Build.svg?style=flat&label=分支数)
  ![stars](https://img.shields.io/github/stars/Chtholly344/Azurlane-Build?style=flat&label=星标数)
  ![issues](https://img.shields.io/github/issues/Chtholly344/Azurlane-Build)
  <p align="center">
    使用Github Workflow自动构建对应区服的APK/XAPK
    <br />
    <br />
    <a>发现问题？提交</a>
    <a href="https://github.com/Chtholly344/Azurlane-Build/issues">Issue</a>
  </p>

</div>

---

## ⚠️ 重要提示
本项目仅用于学习和研究，请在遵守相关法律法规的前提下使用本项目，若您违规使用使用本项目，那么所导致的一切后果将由您本人承担。

- **风险警告**：使用mod可能涉及未知风险，如果您坚持使用，那么您将承担可能会造成的任何后果，包括但不限于您的游戏账号被封禁
- **登录问题**：重新打包的APK签名与官方版本不同，可能导致第三方授权登录失败。请优先使用二维码或验证码登录。

---

## 项目目录
```
├── 📁 .github
│   └── 📁 workflows
│       ├── ⚙️ main.yml
│       └── ⚙️ xapk.yml
├── 📁 key
│   ├── 📄 testkey.pk8
│   └── 📄 testkey.x509.pem
├── ⚙️ .gitignore
├── 📝 README.md
└── 📄 merge_build.sh  # 构建脚本
```

---
## 预览
![Screenshot_2025-11-23-09-17-23-266_com bilibili azurlane](https://github.com/user-attachments/assets/3d57e120-2444-4a6d-8e0c-afb44f76a9b8)

---
## 🚧 已知问题
以下问题将不会被解决：

- **韩服**：启动无响应，可能触发反作弊机制。
- **华为服**：启动界面卡顿，疑似由于签名验证问题导致HMS Core初始化失败。

---

## 📚 致谢

1. [JMBQ/azurlane](https://github.com/JMBQ/azurlane)  
2. [n0k0m3/PerseusCI](https://github.com/n0k0m3/PerseusCI)

---

## 📊 Star历史

[![Star History Chart](https://starchart.cc/Chtholly344/Azurlane-Build.svg?variant=adaptive)](https://starchart.cc/Chtholly344/Azurlane-Build)
