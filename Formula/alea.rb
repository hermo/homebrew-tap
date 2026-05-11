class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.7"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.7/alea-aarch64-apple-darwin.tar.gz"
      sha256 "5873ce4554d07717e4cdea3771dc980100618ac29227ff603a3b4e337afb49c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.7/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "338fcc69f655d145b3a0797f9c16db949e6301153c72eb70d980bfe8a242364e"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
