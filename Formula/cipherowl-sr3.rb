class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.19.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.19.0/cipherowl-sr3-darwin-arm64"
      sha256 "90db8f2a68fd3bfc243c1e4dd8b303fa3f302cc1c29ac97e572b05b9f40a6ef3"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.19.0/cipherowl-sr3-darwin-amd64"
      sha256 "d5bf3f1358772590dad0ab096045bd46be85cb93443b15a693a664839e2f8b77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.19.0/cipherowl-sr3-linux-arm64"
      sha256 "a24811eaaeaed476db6d4b6dbc7f9ee5ba311eb62cd7e67aa8a31ab23c316ca8"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.19.0/cipherowl-sr3-linux-amd64"
      sha256 "ea5d0d0b3fb086ed07e40209e3671e85ddc436b941ed346d9e9e00683eb43c6e"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
