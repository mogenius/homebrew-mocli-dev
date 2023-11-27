class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.14-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-darwin-arm64.tar.gz"
      sha256 "793523561a5b1a9522b86795258e9e4c4d7c4bd7bcb34b5fd5a4829602e594bc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-darwin-amd64.tar.gz"
      sha256 "566f775612ca93b6f233bd4ac395794acc1851422c6ba45bba73c0adf0137827"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-linux-amd64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-linux-386.tar.gz"
        sha256 ""
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-linux-arm64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.14-dev/mocli-dev-v1.6.14-dev-linux-arm.tar.gz"
        sha256 ""
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.14-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.14-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.14-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.14-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.14-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.14-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
