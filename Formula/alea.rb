class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.4"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.4/alea-aarch64-apple-darwin.tar.gz"
      sha256 "e629290924f1acd7d4410544ae8010b72c927bc2250ef04c14e3de4f45998596"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.4/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e536eef0bb5a16cd4cef8b5dc0a8eae0cd893f74e8445034dfeaa4b79fae2ad9"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
