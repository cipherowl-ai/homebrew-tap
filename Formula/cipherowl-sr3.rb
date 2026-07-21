class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.2.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.2.0/cipherowl-sr3-darwin-arm64"
      sha256 "11993224ccda9875cde3d233c6a90d8858417946689045f92abbd1226db4afb7"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.2.0/cipherowl-sr3-darwin-amd64"
      sha256 "d9664d36326ca51984f423490993edb9c7345567693773c33d3db20a32ff4080"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.2.0/cipherowl-sr3-linux-arm64"
      sha256 "f0643121c2254d72c891d791665fc089f622db69c1302e65f448dd0439b47f48"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.2.0/cipherowl-sr3-linux-amd64"
      sha256 "03fe2870c97bca39e78023d9aaa735d10c96883de07436eb4ae85b29ccc2b5a2"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
