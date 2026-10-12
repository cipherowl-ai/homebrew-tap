class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.14.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.14.0/cipherowl-sr3-darwin-arm64"
      sha256 "838f33d6d2df5259f950de0f2892940e19d435d6f9317316cb72b9467f05b784"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.14.0/cipherowl-sr3-darwin-amd64"
      sha256 "2f475d10a619e2d3bb8ed273b2b1b40802bbf85c231542934dfba91e42fcb9ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.14.0/cipherowl-sr3-linux-arm64"
      sha256 "c24a40b1baada596e253a9427ea4aec371cadae26889d53b65231075ea07e6b0"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.14.0/cipherowl-sr3-linux-amd64"
      sha256 "76d4853b71a27eea122102c9639132970ce7da53301456798d474a98125459bd"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
