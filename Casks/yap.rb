# Template: on a v* tag, .github/workflows/build.yml fills in 0.5.1 and d5a8d9fdc481fc6d1fedd88e3d69e5b90eb1fabdeb7bb08b472ee4e8beaa3938
# and commits the result to Casks/yap.rb in 0xdeafcafe/homebrew-tap.
cask "yap" do
  version "0.5.1"
  sha256 "d5a8d9fdc481fc6d1fedd88e3d69e5b90eb1fabdeb7bb08b472ee4e8beaa3938"

  url "https://github.com/0xdeafcafe/yap/releases/download/v#{version}/Yap.zip"
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
