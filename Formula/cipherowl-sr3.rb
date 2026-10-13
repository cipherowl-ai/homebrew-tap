class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.15.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.15.0/cipherowl-sr3-darwin-arm64"
      sha256 "0632d639eabd8463d31b30ace86b9f0f73fd20f3686640390a209317efff2f1a"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.15.0/cipherowl-sr3-darwin-amd64"
      sha256 "2b52e7f592804a7e05c9386d6018ff3798e6784a400b0517bb4cdd4c695787f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.15.0/cipherowl-sr3-linux-arm64"
      sha256 "b4fa96b726038fc4a6fc48b5fa0aba99790bdbc2847cf3b39f493ab17bf76ff1"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.15.0/cipherowl-sr3-linux-amd64"
      sha256 "cf73e936fbdd19a6f4d9a44352e2d42047f0286717c8296867050892d320347c"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
