cask "codex-menubar" do
  version "0.2.2"
  sha256 "966c97541b7457fdd90a99e8ad9ef33580879f6a9e7522836b68d6b1b382da11"

  url "https://github.com/sangimed/codex-menubar/releases/download/v#{version}/CodexMenuBar-v#{version}-macOS.zip"
  name "CodexMenuBar"
  desc "Monitor Codex usage limits from the macOS menu bar"
  homepage "https://github.com/sangimed/codex-menubar"

  depends_on macos: :ventura

  app "CodexMenuBar.app"

  zap trash: [
    "~/Library/Application Support/CodexMenuBar",
    "~/Library/Preferences/com.sangimed.codex-menubar.plist",
  ]

  caveats <<~EOS
    CodexMenuBar is ad-hoc signed and is not notarized by Apple.
    macOS may block the first launch.

    If that happens, try to open CodexMenuBar once, then go to:
      System Settings > Privacy & Security > Open Anyway
  EOS
end
