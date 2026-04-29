class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-darwin-arm64.tar.gz"
      sha256 "6bfc92fdbfec65288306099fbcaa6142f184e652965e12d4dc59ede5615ac662"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-darwin-amd64.tar.gz"
      sha256 "1c3f3e32ae466829252f74cd684903f8922c9279933b7756d8a44c2fec37edc3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-linux-amd64.tar.gz"
        sha256 "f1e2d3a6d97e70d06671d37434a464dfbacb968c82ff397e09540f9028fcfd36"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-linux-386.tar.gz"
        sha256 "533653857a73d5ea4320da89466cac55a1e62e9599560ec746d1c4a9cf213ab3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-linux-arm64.tar.gz"
        sha256 "5bf40ed95a99dc0e1de987aa565351ed290a7a17edb7edc3a48c0fca4a48f57e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.1/mocli-dev-v1.10.0-dev.1-linux-arm.tar.gz"
        sha256 "830b391eca6d552298ff45c3bbefee001383d07d04fea9f78df2787c0b1b161d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
