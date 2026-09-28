class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.7.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.7.0/cipherowl-sr3-darwin-arm64"
      sha256 "99cab34bcbd3c84fe883145ab2fb3979ea74a968cbbc40ed218f210050c8c939"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.7.0/cipherowl-sr3-darwin-amd64"
      sha256 "17b1b90b3f9f4dc305486c5c29bd6fbf0076a2eeef85ccdd8b66caa30632bca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.7.0/cipherowl-sr3-linux-arm64"
      sha256 "6ffe599380128af2d96a9e1bfa848ce93fba3621204b0dfb2f186b0b27162cca"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.7.0/cipherowl-sr3-linux-amd64"
      sha256 "f30b67b061f0b29ffda20b0bee29a1bde8ac34e951e0d80eff976a610d655bb2"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
