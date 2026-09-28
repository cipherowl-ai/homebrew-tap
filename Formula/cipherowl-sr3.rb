class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.6.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.6.0/cipherowl-sr3-darwin-arm64"
      sha256 "81c6187e56b66fd5cbf7805db7b00e76f038d9c915799b8cbb11390ce8e1afcb"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.6.0/cipherowl-sr3-darwin-amd64"
      sha256 "0c80b482392134dc0e6687650ca9578b007a5dca46f0a810994aaab1f7dbd085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.6.0/cipherowl-sr3-linux-arm64"
      sha256 "6c54c8dfe50c44ed0a162dbe8353edd05a50af4a3ed85d5455fce2c58961918f"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.6.0/cipherowl-sr3-linux-amd64"
      sha256 "3a99e8d50f6a0d168f736e44dc7ec0e64d02697cc1211b1d15d82e19d37e5c0e"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
