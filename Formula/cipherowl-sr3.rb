class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.22.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.22.0/cipherowl-sr3-darwin-arm64"
      sha256 "e66a7badf8bd90f7e17233a79f8633543f281f149f7a091e213d0fdb18c34280"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.22.0/cipherowl-sr3-darwin-amd64"
      sha256 "e22fc7d3a7c405885517216fd4226a5e8ed201e7b454f4c1150cf9aa4408261d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.22.0/cipherowl-sr3-linux-arm64"
      sha256 "a3045f46d454a0d6aacb78e485f95375ef9a8fed5c2177c2445718d56ab7fa21"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.22.0/cipherowl-sr3-linux-amd64"
      sha256 "b8b9f4584dc5742f8a97aa577bfc41db76e37e784f68250e6d19589fad98f110"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
