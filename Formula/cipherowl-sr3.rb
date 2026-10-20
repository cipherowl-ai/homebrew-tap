class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.16.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.0/cipherowl-sr3-darwin-arm64"
      sha256 "b784f58526985f26841a1febae3da461561da18b83d758453406c1ab0c8bbcc5"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.0/cipherowl-sr3-darwin-amd64"
      sha256 "77e46df4c770a96a4b66b7db307b1886fcc351b65b872a19626d667b3e3e35c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.0/cipherowl-sr3-linux-arm64"
      sha256 "88f0db8c249179f4b1c74c02e8cce550bd11fe1fa46dcd775327f342eee60283"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.16.0/cipherowl-sr3-linux-amd64"
      sha256 "0140f1691dc3791895280b29862ac2db96924890f6893155756554e54949ce64"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
