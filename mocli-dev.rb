class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.7.7-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-arm64.tar.gz"
      sha256 "0b2828ec4b67beb4bf71dc62a78fd5e6f9e38147eb33f02c93e2d1935c540df8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-amd64.tar.gz"
      sha256 "149c6259e82943815c5496dd6149f1beee9d3cfefcf9f65e955caf18d3c6a942"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-amd64.tar.gz"
        sha256 "de2c21027ed8597e6df5d8d5a23ae952fd16d2f6df438715ff3fef8211fe2cf3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-386.tar.gz"
        sha256 "5071a73757449e66c631fd9493faa309ebc69b27915c7bca618272828b08df50"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm64.tar.gz"
        sha256 "9786826ef590b63d37d8a021a07ab8afc3ef9beae3a133568691dbf72f669c51"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm.tar.gz"
        sha256 "f6383c3b4239eddc17fda02246e567cb8b64c83ef4805ad7eb5aad08202bc0e6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.7.7-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.7.7-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.7.7-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.7.7-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.7.7-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.7.7-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
