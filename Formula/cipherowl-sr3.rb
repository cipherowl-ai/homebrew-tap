class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.17.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.0/cipherowl-sr3-darwin-arm64"
      sha256 "bcff84385cc295b8c7d0cde421a68c138c8578d70b265988f875cf163f95c97b"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.0/cipherowl-sr3-darwin-amd64"
      sha256 "f3b6293c4ad7ab43077306601aa2dc3d89e496eaabd411e61f72126f5f846759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.0/cipherowl-sr3-linux-arm64"
      sha256 "aeeda8dc6e35aa1ddbd47c67a0df7802bb9a68225c9cc7af6c6b4d35e1fec7de"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.17.0/cipherowl-sr3-linux-amd64"
      sha256 "6b080fc16e02575050386f99bff327ec896d6453ce7e550742b12c61c95ae9f3"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
