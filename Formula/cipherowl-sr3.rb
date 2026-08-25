class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.3.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.3.0/cipherowl-sr3-darwin-arm64"
      sha256 "c9fceab445d01ad745803fb8c7d2cc99a1ddd1d279ef76e87925f1c58eb26d71"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.3.0/cipherowl-sr3-darwin-amd64"
      sha256 "c6db1dec4cc226d5dc1e380c2273e6d7109d29a94f6c2974d04f623ee26ea51c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.3.0/cipherowl-sr3-linux-arm64"
      sha256 "dac5d807758912e99fab9b13e44d2c2dab67918b685810d9ad59b53fc6b3464c"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.3.0/cipherowl-sr3-linux-amd64"
      sha256 "dfcfc7e1be6074b9b8943c5d5c191ec80bf56676cfe386e564b40ede91ea7b72"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
