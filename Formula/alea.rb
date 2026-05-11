class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.3"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.3/alea-aarch64-apple-darwin.tar.gz"
      sha256 "315962952695d8d0041b05cde8fc14b310bdc10de133fc2156b1c883a1779389"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.3/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "347f56bd364ea21b7513c7fff93e7f7f4ecc04bf35940b0f1d5dd6671a31d1a6"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
