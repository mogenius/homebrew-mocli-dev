class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.11"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-darwin-arm64.tar.gz"
      sha256 "52ac20813757e8ae9c9d0d4d3de412871f57f1c6821f9f163b285d56893921a3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-darwin-amd64.tar.gz"
      sha256 "cf0bc50ecc7c19bfb5e20d2db0a8b74c2905def3abb1675100c27c9e5929c05b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-linux-amd64.tar.gz"
        sha256 "356d8cf7935cf949b98ee552e5e82d34e27cc09db8f262ac3d718801fdbe886f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-linux-386.tar.gz"
        sha256 "610bea276ac68e8c4eca8d1e9dfa17dbe7f43e5472fea2d313d4e08352ae7f57"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-linux-arm64.tar.gz"
        sha256 "a001b7022b001b699a4f09f397dd9034075cef5632a94ed989f45556fe059272"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.11/mocli-dev-v1.10.0-dev.11-linux-arm.tar.gz"
        sha256 "5b2dac5dd309b8a22a6acb6887aa56fb1c01de4a0f8b99610f76cc7fafce5e7f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.11-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.11-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.11-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.11-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.11-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.11-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
