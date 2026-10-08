class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.11.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.11.0/cipherowl-sr3-darwin-arm64"
      sha256 "3d2b4a3c498597ff40fd28446ecd85b9cfc6ff164a517e247a80ec5438140580"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.11.0/cipherowl-sr3-darwin-amd64"
      sha256 "2e5155e39c62a573f1974857a6449f7fef68d06993a537a9a82e3c0d93c63a5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.11.0/cipherowl-sr3-linux-arm64"
      sha256 "8eea943e5f67ec194c3063cdd1adcc191548e86d98a1f3dbf920a012d6715c0c"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.11.0/cipherowl-sr3-linux-amd64"
      sha256 "199a1d6bb80c0ef89f3cd0cc174494650c257ff33f9d315f7699b156ec1bcb48"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
