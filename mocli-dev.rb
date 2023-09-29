class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.3.8-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-darwin-arm64.tar.gz"
      sha256 "e2b60a99f31b31ac4017198f93f3533ce5033454b3bda15d125b72789c92f77a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-darwin-amd64.tar.gz"
      sha256 "04539a4a3efe58f331c7244c2e4e2254e6ab8c19848401dea75377432075392a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-linux-amd64.tar.gz"
        sha256 "d87d05e9a2907b14fcd6d6f44da03fbb2948e45c8d18523e14ada8bced204255"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-linux-386.tar.gz"
        sha256 "65a90311ad763702a92dc02f369f5f7aaec154957860126fe959bb489b2e7a1f"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-linux-arm64.tar.gz"
        sha256 "bf60b9ea207ef74f93353c781c557c93d507b33b1edad38df3a7c608a543e2ea"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.8-dev/mocli-v1.3.8-dev-linux-arm.tar.gz"
        sha256 "8942f500fac14c9e987679360b648bea2ffef14b5a1123ffb5cbd15a4320b3ca"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.3.8-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.3.8-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.3.8-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.3.8-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.3.8-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.3.8-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
