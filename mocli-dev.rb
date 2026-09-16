class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.23"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-darwin-arm64.tar.gz"
      sha256 "62f7021872299ce1cc0219a3d67fd92baea7939293988167bd8f6d0457b5b55a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-darwin-amd64.tar.gz"
      sha256 "cbb58ad8eef4b72466e11efedd404ae6e33cb6551d232a51b08f9043a5ca46d9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-linux-amd64.tar.gz"
        sha256 "1fa38b916aa793456b540dd5f46ac3f6234b411f52552415dce29a4009f86d1b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-linux-386.tar.gz"
        sha256 "c5e382b2c5779847d9d3b03e95f4ad94a981f9a61e40b795f0e770caaec9c999"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-linux-arm64.tar.gz"
        sha256 "d528d79b1ea46564a4ca465494116ab9659b669bab34870442c9e29fb60f9ed0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.23/mocli-dev-v1.14.0-dev.23-linux-arm.tar.gz"
        sha256 "9ec421841aeb8157808533f7c433cb12120bf81ac5fb89d61774eabdef2078cd"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.23-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.23-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.23-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.23-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.23-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.23-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
