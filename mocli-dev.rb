class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.36"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-darwin-arm64.tar.gz"
      sha256 "6276d2fa2ae7967854714f99c9effcae1e8ceba442610247a102cc7438e9f79f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-darwin-amd64.tar.gz"
      sha256 "5722517028d8b2f8e3ace569d9366d8e4aec63527e585381abfa7a9657091b1d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-linux-amd64.tar.gz"
        sha256 "06336f90c1c75833fae25126ca3f883c2aa37b1fb334132dba35352cbe547337"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-linux-386.tar.gz"
        sha256 "1ea5818590624a90d019b76a79f30f550eaeff0f6c6ba7bf9f724ea18d3357c1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-linux-arm64.tar.gz"
        sha256 "a18fbe054eb04c11a798c34f3e15331f13fc70a9a2daa0e351e3f434ce5e69ad"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.36/mocli-dev-v1.15.0-dev.36-linux-arm.tar.gz"
        sha256 "643d31a066ff06d845a4d4e578546183a32917da4bcaae0462a9d4832d2209e9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.36-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.36-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.36-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.36-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.36-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.36-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
