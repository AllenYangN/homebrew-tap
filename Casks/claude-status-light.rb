cask "claude-status-light" do
  version "0.2.4"
  sha256 "3e01b72b8e6bb1432e2d57eaa67ef1131ab03de1404d5bfc5c7ac4415f958b60"

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
