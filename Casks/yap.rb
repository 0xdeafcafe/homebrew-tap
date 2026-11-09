# Template: on a v* tag, .github/workflows/build.yml fills in 0.5.2 and 782f9623f56f98acf10bb856b3352097f88aa92cd0a3e02d5160a01cb5f7ee44
# and commits the result to Casks/yap.rb in 0xdeafcafe/homebrew-tap.
cask "yap" do
  version "0.5.2"
  sha256 "782f9623f56f98acf10bb856b3352097f88aa92cd0a3e02d5160a01cb5f7ee44"

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
