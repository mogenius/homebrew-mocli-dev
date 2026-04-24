class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.14"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-darwin-arm64.tar.gz"
      sha256 "39716eb05536eac5d7034cd2b24208a01d549aa399db4caab1ff73c4ad761fe5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-darwin-amd64.tar.gz"
      sha256 "316b2069aa72c7a70578a32f5464d9d876617f27cf37d58715e603cdb784ddee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-linux-amd64.tar.gz"
        sha256 "b1cf363510d2001927a856730b4b83d948757be0454f03f85913e7899d5c4a05"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-linux-386.tar.gz"
        sha256 "8fbbe2b7fe95f5e2b55e86904e859a570bccce384ce049586c76e947406772fe"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-linux-arm64.tar.gz"
        sha256 "43fd0da3af71009c46fb1cc44b155262096dbdcf45697cacaa3af6fa499ad1c8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.14/mocli-dev-v1.9.0-dev.14-linux-arm.tar.gz"
        sha256 "5ff8874403fefada40ec8b5f0db160057110432bb3a8d6cc796cc90bba98b51e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.14-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.14-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.14-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.14-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.14-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.14-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
