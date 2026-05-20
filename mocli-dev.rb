class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.12"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-darwin-arm64.tar.gz"
      sha256 "332b30f2a74b745fe19caa8a5d33b6aea437501776650685dea0ed8c930eb9cf"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-darwin-amd64.tar.gz"
      sha256 "19caf5f59fc1b0b698ed5fa55fb4de4faa4edd585774a098b4ae9e5ba64fbf5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-linux-amd64.tar.gz"
        sha256 "8b0790211c7a7faacaaea0c8e1b8e6ef71f38f1345b1b93ba09ff41601b3daaa"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-linux-386.tar.gz"
        sha256 "d5b2a26d14f2426f70194b240e41a1f19dcef5b258eca312b37a3e8eefdfb699"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-linux-arm64.tar.gz"
        sha256 "1ff354bed11dce1859bc3b881db380378971e07e68d0a19500563fe7ce68b665"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.12/mocli-dev-v1.10.0-dev.12-linux-arm.tar.gz"
        sha256 "2de65ff4f316d2c80509e6026bb3cd7598fb87fc128051021b8857bd76f45b08"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.12-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.12-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.12-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.12-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.12-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.12-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
