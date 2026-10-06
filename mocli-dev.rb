class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.65"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-darwin-arm64.tar.gz"
      sha256 "e936082143f67d3fe94b98f7130dcdd4ff4d402f9ad9052c4067801da81a4914"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-darwin-amd64.tar.gz"
      sha256 "b5bbfc0209c3a24a1e3c9ddd7ec000fdd8f06785b45fee28912e0e9baa8f79c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-linux-amd64.tar.gz"
        sha256 "b0d2d3ea6b468b4122a87bb871690a31c20e0cda3f10d0835af771bc49a10c11"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-linux-386.tar.gz"
        sha256 "aff411e761853986305d7a68f09ee232d0e5b0b18c22aabd256d9dee27288904"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-linux-arm64.tar.gz"
        sha256 "c841f784a6a8e69ce7639432d5966239ec792cbea8fa9e6ceece8abd9d3219ca"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.65/mocli-dev-v1.21.0-dev.65-linux-arm.tar.gz"
        sha256 "4c64d8229632c2c66f13ff66193ac44542c2d3ed98581e68748691cd292ea847"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.65-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.65-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.65-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.65-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.65-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.65-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
