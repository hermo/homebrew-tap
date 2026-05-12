class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.10"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.10/alea-aarch64-apple-darwin.tar.gz"
      sha256 "d8fc315ea20ae941f40ff51ac6a329ab624a81c0b0bce234a2bdb9e58e7585e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.10/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0942398ea0ff70ed7d14f3bf0535da745016f8fa582eff64e9d18ea6434ec0ac"
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
