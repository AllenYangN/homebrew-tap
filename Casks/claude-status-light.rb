cask "claude-status-light" do
  version "0.2.1"
  sha256 "6e6b5a423de2c3e3920d034bfd5669b72ce487407b57d0a7835812dae23cbe5f"

  url "https://github.com/AllenYangN/claude-status-light/releases/download/v#{version}/ClaudeStatusLight-#{version}.dmg"
  name "Claude Status Light"
  desc "Menu bar status indicator for Claude Code sessions"
  homepage "https://github.com/AllenYangN/claude-status-light"

  depends_on macos: ">= :sonoma"

  app "ClaudeStatusLight.app"

  uninstall quit: "com.allen.claudestatuslight"

  zap trash: [
    "~/Library/Application Support/ClaudeStatusLight",
    "~/Library/Caches/com.allen.claudestatuslight",
  ]
end
