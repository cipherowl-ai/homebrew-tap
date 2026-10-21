class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.16.1"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.1/cipherowl-sr3-darwin-arm64"
      sha256 "edde65e6644bf0a5dff6ff9379bad5ebbc5da4c084f62ec21679e382d9cbb649"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.1/cipherowl-sr3-darwin-amd64"
      sha256 "1781340bdfcde59929d3cb09e21b255ec45e39d2cabc841f7c689316b09321c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.1/cipherowl-sr3-linux-arm64"
      sha256 "1ed88169c899d25c9ed484a3027a98cd2d92d15a95f1b9797c64e3e706a1ee8f"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.1/cipherowl-sr3-linux-amd64"
      sha256 "01052592b9dcecedff2b01d525dda98d5e2b65069a727a363f1dd65e20ebe06d"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
