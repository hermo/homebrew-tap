class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.1.0"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.1.0/alea-aarch64-apple-darwin.tar.gz"
      sha256 "0b984555d766b261065eff67071e3124fe01c4d16f7245bd400bf79c08f59d3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.1.0/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e7a0b0dd20a8be5778b078cfe3a4badbfed84690a27123ee5bfa460b0e7e15c"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
