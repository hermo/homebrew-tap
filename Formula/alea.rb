class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.5"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.5/alea-aarch64-apple-darwin.tar.gz"
      sha256 "3be27f5c1f9d6e4fb58fbc1df52fee4170f4f60ab9c1618a918ed9260d20c4df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.5/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b46e6c27b83c80a2da8cd23308d71eede0b6c89007bc2e0cc73337083182422"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
