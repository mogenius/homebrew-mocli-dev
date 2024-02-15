class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.7.7-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-darwin-arm64.tar.gz"
      sha256 "225ecb9b90c7930eb7f594c80610282d17d931d40c40e81a47c8b45ba7cfef84"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-darwin-amd64.tar.gz"
      sha256 "e8864d05582a9906e4931d0a2bf5397af4501a124c1ba46b9d47b3438a57e364"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-linux-amd64.tar.gz"
        sha256 "236d4ff41b862430143d6e3361ec52cfa9d6bf534ed857f4c72a5406803903fa"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-linux-386.tar.gz"
        sha256 "5cc037d58adc07d1ccd55f3f11d5527696a64ed1ec09372b9f4a4b78b4bb1f59"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-linux-arm64.tar.gz"
        sha256 "5d78760bf79afa7d6f0fa496738de7f5c20533e20d40ce448b5665d089e201d7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev.2/mocli-dev-v1.7.7-dev.2-linux-arm.tar.gz"
        sha256 "1eea90b9061cf1eb8ad1660739a42690ac7318a5fda599aefa7ba5ee8977cbd0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.7.7-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.7.7-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.7.7-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.7.7-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.7.7-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.7.7-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
