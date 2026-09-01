cask "codex-menubar" do
  version "0.2.3"
  sha256 "31f02851e3f31699e33439362f8c1e2cbea0dc966946b0559b49d8e32f49a500"

  url "https://github.com/sangimed/codex-menubar/releases/download/v#{version}/CodexMenuBar-v#{version}-macOS.zip"
  name "CodexMenuBar"
  desc "Monitor Codex usage limits at a glance"
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
