class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.91"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-darwin-arm64.tar.gz"
      sha256 "8dd07d9b5bb7bfed8b03ba498f55c6bd55a013c8d7a85a59231988bd6db21fd9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-darwin-amd64.tar.gz"
      sha256 "3916cbd28c675b353eb3b9e5cbb508853c5b90a8887114787b65eebb1adfaca9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-linux-amd64.tar.gz"
        sha256 "41782e553ae3566ba0edf11e5a8612bb6671e3313e896eb0bb8aedb89a0f11a2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-linux-386.tar.gz"
        sha256 "bd78f682e5ebc8022932dcb22877484476a612fc4f7e7929a86adf5406596003"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-linux-arm64.tar.gz"
        sha256 "b3bc3affa8e4a895078cf0261dca21a08f44c47ff98cf3d6bfa3c309e6dd13e0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.91/mocli-dev-v1.21.0-dev.91-linux-arm.tar.gz"
        sha256 "9e2ad98bbab5708082fb8127f31aea2eeee0253e42e2f59d047472067462b2b8"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.91-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.91-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.91-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.91-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.91-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.91-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
