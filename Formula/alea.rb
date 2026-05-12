class Alea < Formula
  desc "Verifiable random selection using drand public randomness"
  homepage "https://github.com/hermo/alea"
  version "0.9.8"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/hermo/alea/releases/download/v0.9.8/alea-aarch64-apple-darwin.tar.gz"
      sha256 "0f08120d2d9cf2282613fe6f86c1c7e2335400f70b166144fdcaae9df291a64d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hermo/alea/releases/download/v0.9.8/alea-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c28d7401b9ca86cc15cf4dbc0f849a41964941a837d7f72ea794eee0003b8fb"
    end
  end

  def install
    bin.install "alea"
  end

  test do
    assert_match "at least 2 options required", shell_output("#{bin}/alea 2>&1", 2)
  end
end
