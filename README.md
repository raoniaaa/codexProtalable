# ChatGPT / Codex 目录版

这是从本机已安装的 `OpenAI.Codex 26.1007.9446.0` 提取的 x64 目录版，供没有可用 MSIX 安装环境的 Windows 10 22H2 电脑使用。它不是 OpenAI 官方发布的便携版。

## 下载和启动

1. 从 [v26.1007.9446.0-portable Release](https://github.com/raoniaaa/codexProtalable/releases/tag/v26.1007.9446.0-portable) 下载 `ChatGPT-portable-win10-22h2-x64.zip`。
2. 在目标电脑解压到可写且路径较短的位置，进入 `ChatGPT-portable-win10-22h2-x64` 文件夹。
3. 双击 `Start-ChatGPT.cmd`，首次使用时登录 ChatGPT 账户。命令行版可运行 `Start-Codex-CLI.cmd`。

启动脚本不调用 Microsoft Store、MSI 或 MSIX 安装程序。程序数据写入解压目录下的 `Data`。发布包不含原电脑的登录凭据、聊天数据或测试资料。登录后的 `Data` 不应公开分享。

## 系统要求与验证

- x64 Windows 10 22H2（内部版本 19045）或更高。原包的 `AppxManifest.xml` 声明最低构建号为 19041；启动脚本按 22H2 要求检查 19045。
- 已在源电脑的普通目录中启动主程序；主进程和浏览器子进程均来自该目录。`codex.exe --version` 可运行，主程序数字签名有效，ZIP 全部文件可解压读取。
- 源电脑运行 Windows 11，**尚未在 Windows 10 22H2 实机验证**登录和 Codex 执行。原生沙盒、文件关联、协议链接、资源管理器菜单及自动更新可能依赖 MSIX 注册，目录版可能无法提供这些功能。

压缩包的 SHA-256 记录在 [`ChatGPT-portable-win10-22h2-x64.sha256`](ChatGPT-portable-win10-22h2-x64.sha256)。下载后可用 PowerShell 检查：

```powershell
(Get-FileHash .\ChatGPT-portable-win10-22h2-x64.zip -Algorithm SHA256).Hash
```

OpenAI 的[官方 Windows 部署文档](https://learn.chatgpt.com/docs/enterprise/windows-deployment)提供离线 MSIX，说明没有独立 MSI 或非商店 EXE。
