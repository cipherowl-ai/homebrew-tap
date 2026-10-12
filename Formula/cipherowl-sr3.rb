class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.13.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.13.0/cipherowl-sr3-darwin-arm64"
      sha256 "68084c77bfe866be54fe5066d5d455507c551d26bdd7a034798edb88c62249ec"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.13.0/cipherowl-sr3-darwin-amd64"
      sha256 "a8f01785df9f0be767bb024fd3a36f18c33641a354395a97d68e1298a9e53cec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.13.0/cipherowl-sr3-linux-arm64"
      sha256 "9b2821883deea1f8016f30f717b5d10989f8afe569be3eb13199abfcd1ab38fb"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.13.0/cipherowl-sr3-linux-amd64"
      sha256 "2e8b6d0386f95b002fa57f1e266ef79cc9a02337e1421b66768409c785e8f754"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
