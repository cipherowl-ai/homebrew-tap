class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.17.1"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.1/cipherowl-sr3-darwin-arm64"
      sha256 "6e896ced001143883fedb048316b0c5cc67d7fe78f4c3b578dac308e8ea478ca"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.1/cipherowl-sr3-darwin-amd64"
      sha256 "bea860725e593d07598a56fa810e437a10b48247fbaf414acc7bc757e558ecdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.1/cipherowl-sr3-linux-arm64"
      sha256 "73c1bdfbb994996917ed3fe637fa55a11757d033a288efd33342dbffa1f6addb"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.1/cipherowl-sr3-linux-amd64"
      sha256 "7968a9c8a5e579c804a3774b91356cc23867ffee14dc5d174334aac0715ffd33"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
