class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.18.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.18.0/cipherowl-sr3-darwin-arm64"
      sha256 "26081151305bbce3ead1869251a3cbafdaf1f645fd6e0e97f61f5b63561970f6"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.18.0/cipherowl-sr3-darwin-amd64"
      sha256 "5c57cadbb30f7c6c1980e6fcab33f24afd14b7164521d0e45c4c9e232fee910b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.18.0/cipherowl-sr3-linux-arm64"
      sha256 "d7dd58afbf3bec3024d76310cfd8a1985dd0228f51d1305ddff526359d465580"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.18.0/cipherowl-sr3-linux-amd64"
      sha256 "c8baa57c186f9f40d23628d41b017a07cc9d7d1470afa12141342d6b27b5962b"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
