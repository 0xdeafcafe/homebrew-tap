# Template: on a v* tag, .github/workflows/build.yml fills in 0.5.0 and 8b3570d73b3f0083d98db3eda2052cca71ad12e6086161476e368121c9685c80
# and commits the result to Casks/yap.rb in 0xdeafcafe/homebrew-tap.
cask "yap" do
  version "0.5.0"
  sha256 "8b3570d73b3f0083d98db3eda2052cca71ad12e6086161476e368121c9685c80"

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
