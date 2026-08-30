# Homebrew Tap

Homebrew tap for Sangimed projects.

## CodexMenuBar

Once a stable CodexMenuBar release is published, install it with:

```bash
brew install --cask sangimed/tap/codex-menubar
```

Or explicitly tap the repository first:

```bash
brew tap sangimed/tap
brew install --cask codex-menubar
```

Upgrade:

```bash
brew upgrade --cask codex-menubar
```

Uninstall:

```bash
brew uninstall --cask codex-menubar
```

The `Casks/codex-menubar.rb` file is maintained automatically by the
CodexMenuBar release workflow for stable releases.

Prerelease builds such as `v0.2.0-beta.1` are intentionally not promoted to
the stable Homebrew Cask.
