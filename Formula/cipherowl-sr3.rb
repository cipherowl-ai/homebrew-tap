class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.8.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.8.0/cipherowl-sr3-darwin-arm64"
      sha256 "1568864cebb982f64cad6600a7db44274a5bc890e27d9de3b29c7516148ce29b"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.8.0/cipherowl-sr3-darwin-amd64"
      sha256 "0e161162add9bb34b5802076b2b789c957e9254e998ab67c3d57d80759fa3a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.8.0/cipherowl-sr3-linux-arm64"
      sha256 "299e623051ff31821aa51b5dfe0837531d18236ac1b44590c5ad847dca9b0226"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.8.0/cipherowl-sr3-linux-amd64"
      sha256 "ebd854415b28185cbebe3380073278ca0dc1a402bd847ed335b9996a7cd122b7"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
