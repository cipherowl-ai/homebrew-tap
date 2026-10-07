class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.10.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.10.0/cipherowl-sr3-darwin-arm64"
      sha256 "8b4ebd9738a354940be8f5945eb814bffa65b06f9999d952771c911e43c19e26"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.10.0/cipherowl-sr3-darwin-amd64"
      sha256 "fb9359eb969fb6bbf487518b6c98e6bfe0e5c81321751c4f8a3ac2a849b8a020"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.10.0/cipherowl-sr3-linux-arm64"
      sha256 "b58ed570e61421ba1f8dea06cfd206d0f881643540315d456724622d45faa32b"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.10.0/cipherowl-sr3-linux-amd64"
      sha256 "20f196469b6a549f0d2a0f7f402920734f1e9e07f60fc4da033ff31f29029b7c"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
