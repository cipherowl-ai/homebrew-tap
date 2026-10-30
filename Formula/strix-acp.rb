class StrixAcp < Formula
  desc "ACP agent for the CipherOwl Owldy runtime"
  homepage "https://github.com/cipherowl-ai/strix-acp"
  version "2026.1.2"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/strix-acp/releases/download/2026.1.2/strix-acp-darwin-arm64"
      sha256 "01efe2fa3ee1e4aed03212af5687aa88d67b1de41f083145949e3442d44bc6fb"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/strix-acp/releases/download/2026.1.2/strix-acp-darwin-amd64"
      sha256 "d9cb956148785edc6a466ba0492233bbd1b0b263da2062e3cbba8625f5993dc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/strix-acp/releases/download/2026.1.2/strix-acp-linux-arm64"
      sha256 "963c21e5dc8da99147dfae304af626ea657997f0ab9d1065aaeae6927c0b58a9"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/strix-acp/releases/download/2026.1.2/strix-acp-linux-amd64"
      sha256 "73025f1908f4b78c958d2f7ea3f908a32137d66c574a63b323ef6dfba0047a27"
    end
  end

  def install
    bin.install Dir["strix-acp-*"].first => "strix-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strix-acp --version")
  end
end
