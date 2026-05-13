class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.12"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.12/alea-aarch64-apple-darwin.tar.gz"
      sha256 "6f8e586f11174e8b990fd60b261bff45dee844961df6bd64315c543b1a1227e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.12/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4cfd6a564e2c2653acfcad43744781ca49475459334bfa7a2c6801c47f07357"
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
