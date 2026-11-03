class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.20.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.20.0/cipherowl-sr3-darwin-arm64"
      sha256 "f700911988241d3e6aae1599f81598c85a15f3ccd49889047fcff210670e26b8"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.20.0/cipherowl-sr3-darwin-amd64"
      sha256 "94afb10d39fa8e3326452641a0d7d9f51d188138574018cf5ff4912fe9475365"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.20.0/cipherowl-sr3-linux-arm64"
      sha256 "231f5d8842ec94e84e17a79b3798fc5b5894bddf1124f85e1105534e3c067974"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.20.0/cipherowl-sr3-linux-amd64"
      sha256 "f50991945509ee10c9d48e3c1fb92caec3ce1a9b30fc08bfd65121920940faee"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
