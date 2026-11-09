# Template: .github/workflows/release.yml fills in the version and each
# target's sha256 (the placeholders in at-signs below), and commits the
# result to Formula/rush.rb in 0xdeafcafe/homebrew-tap.
#
# homebrew/core has a formula called rush already (GNU's restricted shell),
# so this one is always installed by its full name:
#   brew install 0xdeafcafe/tap/rush
class Rush < Formula
  desc "Terminal app to run every coding agent you've got"
  homepage "https://github.com/0xdeafcafe/rush"
  version "0.1.0-beta.13"
  license "MIT"

  # Apple silicon only.
  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/0xdeafcafe/rush/releases/download/v#{version}/rush-#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "a73a0974062449b524080f6c4dd182ae9c74294dcc97c06336cc19d378211535"

  def install
    bin.install "rush"
  end

  test do
    assert_match "rush #{version}", shell_output("#{bin}/rush --version")
  end
end
