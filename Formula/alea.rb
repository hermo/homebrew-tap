class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.1"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.1/alea-aarch64-apple-darwin.tar.gz"
      sha256 "9cbc0e38c0eb0b2c8422c81914b8e0097645c40b63704dacc216941cb71d07bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.1/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fb5a53590c23ec75d05881bbb5b053be87a3f1edb8f70c155fa52b1c6d8d835"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
