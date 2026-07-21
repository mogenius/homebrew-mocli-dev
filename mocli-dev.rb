class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.1-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-darwin-arm64.tar.gz"
      sha256 "1998ecd34af054e402be620698a94f88b8b826c76639260c60fa2eb76e74e2e6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-darwin-amd64.tar.gz"
      sha256 "5ff6618e60b8ed8c052183420f530ff9d35e656d3d042664593e155006559482"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-linux-amd64.tar.gz"
        sha256 "6fb609b62dec010e7caa0f91e120c389373a2d92d9b3b2e14170aa612a47dac3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-linux-386.tar.gz"
        sha256 "812a9a14875c91d1f03f341862fb713f659e83e2a3d0dea07a19d9278f46f3ea"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-linux-arm64.tar.gz"
        sha256 "1864cc60bf813d04c984dcb0aeb28ff82a4f8556db634589b583fa9cd2c9fc39"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.1/mocli-dev-v1.12.1-dev.1-linux-arm.tar.gz"
        sha256 "df87ee587faf7d83223ef349fc75d2d92fb3f6ea1d7205c218741f94077a70b4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.1-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.1-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.1-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.1-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.1-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.1-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
