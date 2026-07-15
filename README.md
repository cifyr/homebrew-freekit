# homebrew-freekit

Homebrew tap for [FreeKit](https://github.com/cifyr/FreeKit) — a local-first macOS
menu bar utility suite (Apple Silicon, macOS 26+).

```bash
brew tap cifyr/freekit
brew trust cifyr/freekit
brew install --cask --no-quarantine freekit
```

`--no-quarantine` is required because the app is self-signed (not notarized).
Upgrade with `brew upgrade --cask freekit`; remove with `brew uninstall --zap --cask freekit`.
