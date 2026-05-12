class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.9"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.9/alea-aarch64-apple-darwin.tar.gz"
      sha256 "21ff0975f18d1393707a3bcaefb6125257eea3cacc808ddc4d9e408fb2933a64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.9/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf9f38e0e830e14130858fe7c58088ca467110b8f4498eca11febcc0efad8a03"
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
