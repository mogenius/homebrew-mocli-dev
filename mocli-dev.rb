class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.38"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-darwin-arm64.tar.gz"
      sha256 "a2b1634e8c67a3d2c9fc3a5147e62d2d595fd1bcc4a595afc8f2bebb20791213"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-darwin-amd64.tar.gz"
      sha256 "1d913f3a54e077f00e306619e4bd612adfe4448cd1a962d7bd89ae9a0f1ef46c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-linux-amd64.tar.gz"
        sha256 "be3f0daab5e94c81cbcefb0745aef4592555c41d807885e7c8be142de3b4e58f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-linux-386.tar.gz"
        sha256 "b218bea9f30d9bdf371e4e5f91d3fe9ff94ee2d4007f5145d19fa8ded424b480"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-linux-arm64.tar.gz"
        sha256 "eaf40fce0acd2a6816305d073d3b30137c68cca9b462485579780dcc9738175f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.38/mocli-dev-v1.15.0-dev.38-linux-arm.tar.gz"
        sha256 "27e89f31ebe65ec58021a310670da0108f978d30a9da8d50b5e5a8d1a47a12c6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.38-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.38-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.38-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.38-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.38-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.38-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
