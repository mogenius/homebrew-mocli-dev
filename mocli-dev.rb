class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.67"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-darwin-arm64.tar.gz"
      sha256 "d7fcacbf3902babd4e2039f62249f2f1f86faad78ec16f5416adaf1789156a10"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-darwin-amd64.tar.gz"
      sha256 "d57515e2ccf1928a22db8e1a059c83edff3cf321584372dc602cb2e62e03d321"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-linux-amd64.tar.gz"
        sha256 "9a52ae911650d13df8ebef2f839608b0ec676f66afd198c5e2bc9e31ba64307a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-linux-386.tar.gz"
        sha256 "6f0117ef154458b019c5360b919f155e456933275afeb1673a73889cee017f1c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-linux-arm64.tar.gz"
        sha256 "fcf6ab7f83d37f8bfafbcdaded7fa5504016b09dcd56fd2f38dbbb291daa7183"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.67/mocli-dev-v1.21.0-dev.67-linux-arm.tar.gz"
        sha256 "b2ac9b191e2238d555c68e99e7a622aa9ca76a06aa4cefbe9a686f5777837b11"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.67-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.67-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.67-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.67-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.67-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.67-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
