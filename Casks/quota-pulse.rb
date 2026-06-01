cask "quota-pulse" do
  version "2.3.1"
  sha256 "4a3b7cb389e22570857fa955c0725a8c6527fbb85e2c6841c2921c8a1fb4fdda"

  url "https://github.com/xyx593999449-ai/homebrew-tap/releases/download/v#{version}/QuotaPulse_Installer.dmg"
  name "QuotaPulse"
  desc "macOS 状态栏多源额度监控工具（MiniMax/智谱/DeepSeek/Codex/Antigravity）"
  homepage "https://github.com/xyx593999449-ai/homebrew-tap"

  app "QuotaPulse.app"

  # 自动清除隔离标记，解决“文件已损坏”问题
  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/QuotaPulse.app"],
                   sudo: true
  end

  uninstall quit: "com.liubai.quotapulse"

  zap trash: [
    "~/Library/Preferences/com.liubai.quotapulse.plist",
  ]
end
