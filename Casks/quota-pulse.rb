cask "quota-pulse" do
  version "2.2.1"
  sha256 "c239b28a42cb1e03cd55ef193e88d7a84e9c491105661158a2924e58f72b8a4a"

  url "https://github.com/xyx593999449-ai/homebrew-tap/releases/download/v#{version}/QuotaPulse_Installer.dmg"
  name "QuotaPulse"
  desc "macOS 状态栏多源额度监控工具（MiniMax/Codex/Antigravity）"
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
