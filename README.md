# 🤖 QuotaPulse for macOS

[![Platform](https://img.shields.io/badge/Platform-macOS-blue.svg)](https://apple.com/macos)
[![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**QuotaPulse** 是一款专为 Mac 用户打造的原生状态栏（Menu Bar）工具。它能统一追踪 `MiniMax / Codex / Antigravity` 的额度用量，并以直观的“电量百分比”和“双圆环进度条”形式展现，让您的算力剩余一目了然。

---

## ✨ 功能特性

*   **原生系统集成**：驻留在 macOS 顶部状态栏，不占用 Dock 空间，不干扰工作流。
*   **双重配额展示**：
    *   **5 小时近期用量**：实时显示短周期内的频控状态。
    *   **本周总用量**：直观掌控每周的总额度消耗。
*   **动态颜色预警**：根据剩余百分比自动切换颜色（🟢 充足 / 🟡 留意 / 🔴 告警）。
*   **多模型自由切换**：点击面板即可在不同模型（如 `m2.7`, `M*`）之间无缝切换数据。
*   **极简配置**：安全保存您的 API Key（Bearer Token）于本机凭据存储中。
*   **Homebrew 极速分发**：支持一键安装，自动解决 macOS “文件已损坏”的权限痛点。

---

## 🚀 安装指南

### 方式一：Homebrew (推荐，最省心)

如果您安装了 [Homebrew](https://brew.sh)，只需运行以下两行命令：

```bash
# 订阅软件源
brew tap xyx593999449-ai/homebrew-tap

# 一键安装
brew install --cask quota-pulse
```
*注：通过此方式安装会自动清除 macOS 的隔离位，无需额外手动配置。*

### 方式二：手动下载

1. 前往 [Releases](https://github.com/xyx593999449-ai/homebrew-tap/releases) 页面下载最新的 `.dmg` 文件。
2. 双击打开并将 `QuotaPulse` 拖入 **应用程序 (Applications)** 文件夹。
3. **重要**：第一次运行时请 **右键点击** 图标并选择 **打开**。
4. 如仍提示“文件损坏”，请在终端运行：
   `sudo xattr -rd com.apple.quarantine /Applications/QuotaPulse.app`

---

## 🛠️ 如何配置

1. 启动后，点击状态栏右上角的 🤖 (CPU) 图标。
2. 选择 **“设置 API Key...”**。
3. 粘贴您的 MiniMax API 凭证 (Bearer Token)。
4. 点击 **“完成”**，数据将在数秒内自动同步。

---

## 🏗️ 本地编译 (对于开发者)

如果您希望自行编译，请确保您安装了 **Xcode Command Line Tools**：

```bash
# 克隆仓库
git clone https://github.com/xyx593999449-ai/homebrew-tap.git 
cd MinimaxTokenMonitor

# 使用自动化脚本执行编译与打包
sh build.sh
```

---

## 📄 开源协议

本项目基于 **MIT License** 协议开源。您可以自由地进行二次开发与分享。

---

**Made with ❤️ by Liubai & Antigravity**
