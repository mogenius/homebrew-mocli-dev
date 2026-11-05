class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "2.1.0-dev.101"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-darwin-arm64.tar.gz"
      sha256 "f9a0f681179425922c385e7791353420a23b7645baa5848c85e63ca2e9832b77"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-darwin-amd64.tar.gz"
      sha256 "e4deaeaa61f3d2d4d025a053e31e77bf5f3ec2abdce0e061a92deaf29a8807b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-linux-amd64.tar.gz"
        sha256 "076a372059fbde58b56dbc37e2652fbed4ca1df89003a6308c5f75cf7d3b34b4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-linux-386.tar.gz"
        sha256 "e84bb20bc9d12a8ee8b983c3c714f44b6c952839320dc599e609199e90aa72ae"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-linux-arm64.tar.gz"
        sha256 "7962bbf051d3021a469a3c4411d6e2e83f2f3500acf74bf87c04d7677c9b3357"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.101/mocli-dev-v2.1.0-dev.101-linux-arm.tar.gz"
        sha256 "72bea60812236b23a4a564ec868e4c6b008c4b28ff72a2a69a1508e8b698c9c6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v2.1.0-dev.101-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v2.1.0-dev.101-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v2.1.0-dev.101-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v2.1.0-dev.101-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v2.1.0-dev.101-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v2.1.0-dev.101-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
