class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.4.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.4.0/cipherowl-sr3-darwin-arm64"
      sha256 "a148ffd43ecf7986ce569962d395586bb50cb9fe5ce50d813d082d90ce67bf19"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.4.0/cipherowl-sr3-darwin-amd64"
      sha256 "e50b832c1fe05fb818fd51ec0113a96d5d8c2e5edb3fd85b34a71b616e05d364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.4.0/cipherowl-sr3-linux-arm64"
      sha256 "b799a96405ef11ba658b25a557ef5839c3cf7cc4b703d7016405c55c992edc45"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.4.0/cipherowl-sr3-linux-amd64"
      sha256 "78b3203cf0c9de152754c23138be9cca810bcf35a0c2a9cabd794c1cd1b96b75"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
