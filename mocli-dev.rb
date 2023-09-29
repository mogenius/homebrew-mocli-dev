class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.3.9-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-darwin-arm64.tar.gz"
      sha256 "c068df8f7b80b18c27523a89678a3cd974a97c65aeea5d7e27089c4ee3aed1b2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-darwin-amd64.tar.gz"
      sha256 "40bc4d1f7391358b09e8c348fa7c9498ece8f3a07bbc5be9c4f2579c0327f643"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-linux-amd64.tar.gz"
        sha256 "f014ebce471f1379868bb9cc2c24fe82a84231db1b7b266451f068813dca5c91"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-linux-386.tar.gz"
        sha256 "c6069238903d82b946d68eb9805bca2701d73b1465a7bd17c5a6ff74879c6ae0"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-linux-arm64.tar.gz"
        sha256 "21e61d68b793756b98c061d2aa160eb758c6cfd2b8ad8a03e572fe7ba3360790"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.9-dev/mocli-dev-v1.3.9-dev-linux-arm.tar.gz"
        sha256 "24f77cac63a3a3c8ec6393325259b0a069c112146db5a847b1c7e8369d4915af"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.3.9-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.3.9-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.3.9-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.3.9-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.3.9-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.3.9-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
