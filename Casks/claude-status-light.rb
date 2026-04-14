cask "claude-status-light" do
  version "0.2.3"
  sha256 "8b7084725560c09e2f59f48f8e285f89f061c940d74e6c490b28f59cb5be1222"

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
