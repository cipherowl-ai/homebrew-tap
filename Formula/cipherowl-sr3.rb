class CipherowlSr3 < Formula
  desc "CLI for CipherOwl address screening, risk reasoning, and reporting"
  homepage "https://github.com/cipherowl-ai/cipherowl-sr3"
  version "2026.1.0"

  on_macos do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.1.0/cipherowl-sr3-darwin-arm64"
      sha256 "ff5b7baf2aa2987c1b6b00e2519cf9ba0f4f36f720e6c113809eaf90a3931223"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.1.0/cipherowl-sr3-darwin-amd64"
      sha256 "9922bcabe58db2cbccfc1e2a90cfd0af6ad92fefa5298900b35c1f093c2ed828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.1.0/cipherowl-sr3-linux-arm64"
      sha256 "acfb9e37ccfbb6fd94e34dd6e653ce62e5764388372ed40f55757fcdc90d2147"
    end
    on_intel do
      url "https://github.com/cipherowl-ai/cipherowl-sr3/releases/download/2026.1.0/cipherowl-sr3-linux-amd64"
      sha256 "caeb328b07bdcd8e32a8689679dbadfca199aa10c902190d642464786bfcfc23"
    end
  end

  def install
    bin.install Dir["cipherowl-sr3-*"].first => "cipherowl-sr3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cipherowl-sr3 --version")
  end
end
