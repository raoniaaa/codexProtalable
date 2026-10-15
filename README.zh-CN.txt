ChatGPT / Codex 目录版（Windows 10 22H2 x64）
===========================================

来源：本机已安装的 OpenAI.Codex 26.1007.9446.0，完整复制 app 目录。
从这个目录启动时不调用 Microsoft Store、MSI 或 MSIX 安装程序。将整个目录
通过 SCP 复制到目标电脑，解压后双击 Start-ChatGPT.cmd 即可尝试启动。

要求：Windows 10 22H2（内部版本 19045）或更高的 x64 系统。程序的原始
MSIX 清单声明最低 Windows 构建号为 19041。本包的启动脚本按你的要求
进一步限制到 19045。

使用步骤：
1. 将压缩包传到目标 Windows 电脑，解压到可写的较短路径，例如
   %USERPROFILE%\ChatGPT-portable。
2. 双击 Start-ChatGPT.cmd。首次使用时登录你的 ChatGPT 账户。
3. 如需命令行版，在该目录打开终端运行 Start-Codex-CLI.cmd。

数据：启动脚本把浏览器资料及 CODEX_HOME 指向本目录下的 Data。压缩包内
没有原电脑的登录凭据或聊天数据。Windows 可能仍会写入少量系统缓存；
登录凭据受 Windows 保护，换电脑后需要重新登录。请勿公开分享登录后的
Data 目录。

验证范围：已经在源电脑上从普通目录启动 ChatGPT.exe，确认主进程与
浏览器子进程均来自此目录；捆绑的 codex.exe --version 可运行。
源电脑为 Windows 11，因此尚未在 Windows 10 22H2 实机验证。
原安装包包含系统服务；没有 MSIX 注册时，原生沙盒、文件关联、
协议链接、资源管理器菜单和自动更新可能不可用。请在目标机上验证
登录与 Codex 执行功能。

本目录版是对现有安装的复制，不是 OpenAI 官方发布的便携版。
