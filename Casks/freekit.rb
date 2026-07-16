# Homebrew cask for FreeKit. Lives in the tap repo cifyr/homebrew-freekit
# (path Casks/freekit.rb). See HOMEBREW.md for the release + tap workflow.
#
# The app is signed with a self-signed identity, NOT notarized, so a normal
# `brew install --cask freekit` would quarantine it and Gatekeeper would block
# first launch. Until the app is notarized, install with:
#   brew install --cask --no-quarantine freekit
cask "freekit" do
  version "0.2.0"
  sha256 "58bd0613ae9fc656355d1e6432f5d2c3a1ff21bef73bcbce92bc37192bdcf8a6"

  url "https://github.com/cifyr/FreeKit/releases/download/v#{version}/FreeKit.dmg"
  name "FreeKit"
  desc "Native macOS menu bar utility suite: notch controls, notes, compression, conversion, and more"
  homepage "https://github.com/cifyr/FreeKit"

  # Apple Silicon + macOS 26 only (on-device FoundationModels + whisper.cpp/Metal).
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "FreeKit.app"

  # Remove everything FreeKit writes when the user runs `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/FreeKit",
    "~/Library/Preferences/com.cadenwarren.freekit.plist",
    "~/Library/Caches/com.cadenwarren.freekit",
    "~/Library/Saved Application State/com.cadenwarren.freekit.savedState",
  ]
end
