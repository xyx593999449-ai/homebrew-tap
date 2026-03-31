cask "minimax-monitor" do
  version "1.0.0"
  sha256 "573b80d8195e8f045133f442192544eb9bbbaff9391539aa3d8257c5f782ee39"

  url "https://github.com/xyx593999449-ai/homebrew-tap/releases/download/v1.0.0/MinimaxMonitor_Installer.dmg"
  name "Minimax Monitor"
  desc "macOS 状态栏 MiniMax Token 用量监控工具"
  homepage "https://github.com/xyx593999449-ai/homebrew-tap"

  app "MinimaxMonitor.app"

  # 自动清除隔离标记，解决“文件已损坏”问题
  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/MinimaxMonitor.app"],
                   sudo: true
  end

  uninstall quit: "com.liubai.minimaxtokenmonitor"

  zap trash: [
    "~/Library/Preferences/com.liubai.minimaxtokenmonitor.plist",
  ]
end
