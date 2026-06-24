class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-darwin-arm64.tar.gz"
      sha256 "5efc00cf3898385fa3c093c41b73df4a67ac46075f0727bf64aa0d4c6fe85190"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-darwin-amd64.tar.gz"
      sha256 "70def548a936169ee74088f78175fca4eba6dd3500fbe95bc6e49c1dab8f9ca7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-linux-amd64.tar.gz"
        sha256 "4032ca2b73334bcb45ca21adefa3f3a6f3104bcbc6f4444eb5648a3257ce1459"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-linux-386.tar.gz"
        sha256 "b12e5ac0c22cfd297659618c7ae354ca2e90b67176bdb3424f143ebec821e822"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-linux-arm64.tar.gz"
        sha256 "6992a64ee9ef51b0ff3adc53587e774c9542a25b9323760766695ee12e40dfca"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.3/mocli-dev-v1.12.0-dev.3-linux-arm.tar.gz"
        sha256 "375bda6835a79757d3d4b80bbf9a668509d1970acc54e11927bde351a07e71a7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
