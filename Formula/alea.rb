class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.11"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.11/alea-aarch64-apple-darwin.tar.gz"
      sha256 "c8040f15424400fbfa7623276cc0861e4a2ea07154abfa713b887aabc0c7fbce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.11/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "192b817bb0786721af0d5bc1c9ac1c13a8f2d6b4f13f1ce596fff2128dc88613"
    end
  end

  def install
    bin.install "alea"
    man1.install "alea.1"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
