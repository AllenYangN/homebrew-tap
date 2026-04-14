cask "claude-status-light" do
  version "0.1.1"
  sha256 "53e2643422fc804412f62edea29d7855ffd6a03a0aec51e912557b7968d62413"

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
