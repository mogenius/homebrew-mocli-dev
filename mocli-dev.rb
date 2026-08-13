class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-darwin-arm64.tar.gz"
      sha256 "274be5b0188b86b62277eb68f714b9308d74082f15b5cfdce33960d045e7bd62"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-darwin-amd64.tar.gz"
      sha256 "58e66161561caf579b8c773e34bac15135c6d15d225ed3ec575998a816008d93"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-linux-amd64.tar.gz"
        sha256 "ddf37681ee4ea3a32f3c97af552f75c271a376d2525150252166e1b556d083da"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-linux-386.tar.gz"
        sha256 "82446f98c7be77ecb0021cdf6bb972c33198bfd7ec56ee8ef4a69d51f1aeca54"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-linux-arm64.tar.gz"
        sha256 "df1c054679f8c6d5581e2a7e44c7836806cf5b8fd0df8a3e804e99f774f7efd3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.3/mocli-dev-v1.14.0-dev.3-linux-arm.tar.gz"
        sha256 "0ce70d594546ff725cf986ac1bbdd7c9fd4f497e2385f0fb48c4cfcd40bc9ff9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
