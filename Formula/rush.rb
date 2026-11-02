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
  version "0.1.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xdeafcafe/rush/releases/download/v#{version}/rush-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "897ec8a5fbf8e183acea19003bbbff81e787f3cd0724dc07e6777a80b4b3af01"
    end
    on_intel do
      url "https://github.com/0xdeafcafe/rush/releases/download/v#{version}/rush-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9f4c1bcdd5035ef2c967c7a25831cbf171d93910f9fb527cb4470556d1aabab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/0xdeafcafe/rush/releases/download/v#{version}/rush-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c99dccab734d51c286bc0ebe496980b6866fffeca2c4978646105170de8ef82c"
    end
    on_intel do
      url "https://github.com/0xdeafcafe/rush/releases/download/v#{version}/rush-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d1a2aeaa948b3f924017563acd8f4f0e06789d69bd6e65adaa61ad9ec91720a"
    end
  end

  def install
    bin.install "rush"
  end

  test do
    assert_match "rush #{version}", shell_output("#{bin}/rush --version")
  end
end
