class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.19"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-darwin-arm64.tar.gz"
      sha256 "0832390b425a2cae1a0bb15d2205c9b5971c8269b0fc1e92b33cf80546f922c3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-darwin-amd64.tar.gz"
      sha256 "16b5e2e3e65cb322918f4934c9f21b966eddf2df41a4b53fce33327215001572"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-linux-amd64.tar.gz"
        sha256 "840bb903e5e9089c4acbcb44d4e4c59b448667353d3c7e37d7389da495f477bd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-linux-386.tar.gz"
        sha256 "feded694e93bfc3896d2bc998bee235c9e9c41f6f22f92a477ab529708f0aa96"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-linux-arm64.tar.gz"
        sha256 "52c176c5730b0056d7f0ffaec6c734ad9c5269dabe0066e0181212777b2fede8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.19/mocli-dev-v1.9.0-dev.19-linux-arm.tar.gz"
        sha256 "c3ea0ec8efbddddd2a099f21c7affd3e341953ad6d1bb768db02195763b7a342"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.19-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.19-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.19-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.19-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.19-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.19-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
