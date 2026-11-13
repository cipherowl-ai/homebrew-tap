class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.23.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.23.0/cipherowl-sr3-darwin-arm64"
      sha256 "f51656353ff97c4ae816ca0b0464b4bce2a7dd5c76a4c64469252fa1397e5f52"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.23.0/cipherowl-sr3-darwin-amd64"
      sha256 "7cd55ce8d402924c72cf4ae40fc64425828745428f4f1dad80fd09e9fd79d123"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.23.0/cipherowl-sr3-linux-arm64"
      sha256 "1cf1594d73e4a9e5855e5c9c0bb073722fe9e859122a2f492abe47e8e5fc0800"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.23.0/cipherowl-sr3-linux-amd64"
      sha256 "658ab77db043d18a6200612c2c573ab1ba233448810a53c683e0b253b5095946"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
