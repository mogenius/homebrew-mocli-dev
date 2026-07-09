class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.6"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-darwin-arm64.tar.gz"
      sha256 "1476af88abd5610bfe81a5d2bb8691e8fd16c2044bfab7b3ee206ceb12c33737"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-darwin-amd64.tar.gz"
      sha256 "a25a2061fdeaa7318ee50c0cadce1271c06e8f857a1568bd329881eed8b17872"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-linux-amd64.tar.gz"
        sha256 "d1a2bb66648e19ab34d41a9dd9cef4d5235f2e195c1e42f3c00dd6c0afe1b590"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-linux-386.tar.gz"
        sha256 "2d194dd32815ffbcc5e1964df5c4844b3421f766e45cdf79d8b76743a84860d4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-linux-arm64.tar.gz"
        sha256 "4f155657a29de123bf95a2c65f3fdcf81d9a1767cce12a64c92aa0f154e7c122"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.6/mocli-dev-v1.12.0-dev.6-linux-arm.tar.gz"
        sha256 "ca547f8eb37ba83a069560ec0aa7b3f84ec4a08cc5b2fb6ea985828a729805ff"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.6-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.6-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.6-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.6-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.6-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.6-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
