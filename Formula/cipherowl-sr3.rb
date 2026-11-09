class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.21.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.21.0/cipherowl-sr3-darwin-arm64"
      sha256 "f2f00adb5509519d3e46e05d31cedb9d0a1d1f85e130e4704d0b6756e1e3106d"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.21.0/cipherowl-sr3-darwin-amd64"
      sha256 "5e28b668f0a61c2c9faac1b5c542eb7b72a343634094722fe2e69ffa0b153f4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.21.0/cipherowl-sr3-linux-arm64"
      sha256 "1b360555b23e4b508321e27910afdbf89401005a46cf9dfe9263ac027334c173"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.21.0/cipherowl-sr3-linux-amd64"
      sha256 "8bb03d29ab3891450e1d2269211bc1a99c8143fe0f63ba08fb14b494ccfe0658"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
