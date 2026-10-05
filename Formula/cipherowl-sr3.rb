class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.9.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.0/cipherowl-sr3-darwin-arm64"
      sha256 "aa1c57fb1a1bd3572f6d35e370d5edc692cac7b7c72b6ba47d29769bad8d2f34"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.0/cipherowl-sr3-darwin-amd64"
      sha256 "0d191ed93817111b345b4026011daffe11e999ee7938c9840dee417661c6f002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.0/cipherowl-sr3-linux-arm64"
      sha256 "36f9313a85ebe95e538130868085fa9dc37686c41619c2096d1994c19918e1a5"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.0/cipherowl-sr3-linux-amd64"
      sha256 "8c961b23d5ffa4d7d43c48efc67209b05fba505981fb4d37b0261e1b8605d99d"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
