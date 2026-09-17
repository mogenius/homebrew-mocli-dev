class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.44"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-darwin-arm64.tar.gz"
      sha256 "8c2f76e93279a60e519fe7847176c41aa7fd106d79d3e8ad83a2e1d1068d8f3d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-darwin-amd64.tar.gz"
      sha256 "790e29db9f84c002c78d1b9577d2f5bd2e4c722429303acae509f215a6993515"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-linux-amd64.tar.gz"
        sha256 "1310c22307d1e8d06d0296457d93f32e7ccbdfae2f6aaededc0b7dc56268c287"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-linux-386.tar.gz"
        sha256 "3c9bd04ff66cc5068d16b7e2a9f46db4e5c18699e9bdc7c9ede4930c9f2f0b35"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-linux-arm64.tar.gz"
        sha256 "05f5afe5f4c9549263ebcfe73b244f714a916101f24f13c8c6148bda34555421"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.44/mocli-dev-v1.16.0-dev.44-linux-arm.tar.gz"
        sha256 "43eb0b72a3a3586bfab6d8523ab8fbba43155e3a6c6fbafb8658b86674d00411"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.44-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.44-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.44-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.44-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.44-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.44-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
