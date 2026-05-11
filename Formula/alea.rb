class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.2"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.2/alea-aarch64-apple-darwin.tar.gz"
      sha256 "8c4448e8239997a4ab5464afec572465756ec5cb4e160e6d087cd271992989df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.2/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1d00a2241413eea8438fc83469ce79d49375ec978827890e151a83b93a5e334"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
