class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.9.1"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.1/cipherowl-sr3-darwin-arm64"
      sha256 "89cdf9487a024db9da065c94222a9e39dfdb7ce5ee9eaf7d726d526c54afe943"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.1/cipherowl-sr3-darwin-amd64"
      sha256 "c0f0e28fde17cc6c63f9b3095f37a854a6aa59858f071cb21e94c4117e28c5c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.1/cipherowl-sr3-linux-arm64"
      sha256 "7604ba37f39e7a04c771183f8b8811faec51e11b8150cbb54c4bc0062e014dbb"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.9.1/cipherowl-sr3-linux-amd64"
      sha256 "0ea6393b0e5f5eef48b123495678eb48d92f7e9508124782c5ab9667a3617001"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
