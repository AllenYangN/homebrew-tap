cask "claude-status-light" do
  version "0.1.0"
  sha256 "19cdc69d7fef4d93a6f8c6b61cce0b37b687227ee818963270ee542c48a4212c"

  url "https://github.com/AllenYangN/claude-status-light/releases/download/v#{version}/ClaudeStatusLight-#{version}.zip"
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
