cask "yap" do
  # Always the latest release: yap updates itself with Sparkle, so the cask never needs bumping.
  version :latest
  sha256 :no_check

  url "https://github.com/0xdeafcafe/yap/releases/latest/download/Yap.zip"
  name "Yap"
  desc "Hold fn to dictate, using the built-in on-device speech model"
  homepage "https://github.com/0xdeafcafe/yap"

  auto_updates true
  depends_on macos: :tahoe

  app "Yap.app"

  uninstall quit: "red.forbes.yap"

  zap trash: [
    "~/.config/yap",
    "~/Library/Application Support/Yap",
    "~/Library/Logs/Yap",
    "~/Library/Preferences/red.forbes.yap.plist",
  ]
end
