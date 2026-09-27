class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.5.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.5.0/cipherowl-sr3-darwin-arm64"
      sha256 "e4e22635f69e9fa9886acbbf2f2a7668da0435e09526050fd45b9ab15d6d0ecf"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.5.0/cipherowl-sr3-darwin-amd64"
      sha256 "8a140f33945b30b780040b491e3fe4e3ac3efe6c0b4dc2d3f2c8b4aeddf36faf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.5.0/cipherowl-sr3-linux-arm64"
      sha256 "ecaf14d8c728554fd73db5983c63e2b66bc92363789a7a44f669507bb065487c"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.5.0/cipherowl-sr3-linux-amd64"
      sha256 "7c52f9ca19ebaccb06861700353a7acebf74d4737f0bb8b79ca7270e4a26a19e"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
