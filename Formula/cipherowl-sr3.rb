class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.12.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.12.0/cipherowl-sr3-darwin-arm64"
      sha256 "639c618aa3e4cae19c8fa88ad38ec6f332944226dbe38dc5799e0e657dc93d7f"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.12.0/cipherowl-sr3-darwin-amd64"
      sha256 "9927e66f1e3875821622272686bbcd5ad60d114c3d0800daec5a08d4ad622c0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.12.0/cipherowl-sr3-linux-arm64"
      sha256 "9dfa2f1c1c101d4e037c270ef465b7bc23882d6f7759e2b1fcc9a973f95fd7f7"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.12.0/cipherowl-sr3-linux-amd64"
      sha256 "38bbcb640f1ee257fd8d931269d7ac851ecd1c90127fad7d7a995af9ee1e6621"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
