class Finpass < Formula
  desc "Generate passphrases using Finnish language words"
  homepage "https://github.com/hermo/finpass"
  version "1.6.0"
  url "https://github.com/hermo/finpass/releases/download/v1.6.0/finpass.ape"
  sha256 "e22cf66c54f05a5b87a273fe25ec0bd83b55bb62afff626eaef5ff44ab0ca9d2"
  license "MIT"

  # The APE binary is not ELF, so Homebrew's Linux cleaner would strip its
  # exec bit (it only recognizes shebang scripts and ELF as executables).
  skip_clean "bin/finpass"

  def install
    bin.install "finpass.ape" => "finpass"
    chmod 0755, bin/"finpass"
  end

  test do
    assert_match "v1.6.0", shell_output("#{bin}/finpass --version")
  end
end
