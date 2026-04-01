cask "minimax-monitor" do
  version "1.1.0"
  sha256 "53d8869885708d04643b2c1638babb0b5b80ea79be45e0bf632a4d5c7b1ac25f"

  url "https://github.com/xyx593999449-ai/homebrew-tap/releases/download/v#{version}/MinimaxMonitor_Installer.dmg"
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
