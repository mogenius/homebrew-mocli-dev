class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.70"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-darwin-arm64.tar.gz"
      sha256 "438a4467153e74a00ae83c6700467fab1c421e7e31c9333e752df372ccc0b866"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-darwin-amd64.tar.gz"
      sha256 "3efc36c59198576524adffd01cd76c68f14e1350ebeedf3e9036afec361ee1a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-linux-amd64.tar.gz"
        sha256 "b067bb9c1bb8c839be9df46adc9d564ab4f362190361ddc40ed29b36fe12f563"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-linux-386.tar.gz"
        sha256 "602e76aab5869d54982aec3ce3e70cdfd0dc855a67708ba28ef8f057ef1439b0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-linux-arm64.tar.gz"
        sha256 "238b0f0ac6c7cbc967423a827d7d2eae27dcf7619c931501138878954d0e387e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.70/mocli-dev-v1.21.0-dev.70-linux-arm.tar.gz"
        sha256 "c5a184b56ae59e762b107068836d5ececb048f8a40c4fc143f2f5afbaf148e21"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.70-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.70-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.70-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.70-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.70-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.70-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
