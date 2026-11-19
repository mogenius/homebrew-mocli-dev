class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.114"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-darwin-arm64.tar.gz"
      sha256 "09364e62e1db5563f2a43337b87342fc9ed206f84ed55493d38b4dea2bc198f0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-darwin-amd64.tar.gz"
      sha256 "152092427b778a588333bceee1e3a8a40cabee40383598c426f7d52fe7c3a043"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-linux-amd64.tar.gz"
        sha256 "15d6e888b726d7a0e6e70029aa70d86722ecea604d85cdf4aec2d60cbd2c93c0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-linux-386.tar.gz"
        sha256 "21572d13637fdc4fad7c3813dda05d0bbacf5d6b2d299039793f917c401cd1b4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-linux-arm64.tar.gz"
        sha256 "3a55d99f0840371c16f806f8d70e26910b1e2dca6d8cac180d43082ba8ab0ac5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.114/mocli-dev-v3.1.0-dev.114-linux-arm.tar.gz"
        sha256 "fa6cb182fffda213f5f72cf78e5889a011345bdc12397aa426c9c9dfb4b2aaa5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.114-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.114-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.114-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.114-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.114-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.114-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
