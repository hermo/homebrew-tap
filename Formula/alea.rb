class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.6"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.6/alea-aarch64-apple-darwin.tar.gz"
      sha256 "7f6d4e393ca3b6b53e7270cec57489bca6085e6dec29be2fa5b102ce86fdcf20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.6/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f139184ce17a9fb6f7285390030a1a71cb97e6d8b86179c5148594475e4995fe"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
