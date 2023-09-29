class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.3.6-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-darwin-arm64.tar.gz"
      sha256 "fc3fea7fcd6e1823d2910be932e1c25d71d3b3e2155a65ad7bbd6859898f0415"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-darwin-amd64.tar.gz"
      sha256 "4932a17587a3bdc4a91efdf91b5c6be969ae51c9112b85b7983a909e9430a4e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-linux-amd64.tar.gz"
        sha256 "b5fb5ac0b5e119da5d61f651bccae72fb96317d55e27337edb413eedddf40ec7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-linux-386.tar.gz"
        sha256 "c6326c323b1bb52ffb81b7f73cf9a99533918a52642acffceacd87ee98f7cd60"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-linux-arm64.tar.gz"
        sha256 "c51a8c6fb24a67f9d93a2d2896248264414f5144c39a97864186e4e7f290824f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.6-dev/mocli-v1.3.6-dev-linux-arm.tar.gz"
        sha256 "ba5bbfd528151a6b7fd3955332aaf418358a403274011ee20822bbf9339572f3"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.3.6-dev-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.3.6-dev-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.3.6-dev-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.3.6-dev-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.3.6-dev-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.3.6-dev-linux-arm" => "mocli"
      end
    end
  end
end
end
