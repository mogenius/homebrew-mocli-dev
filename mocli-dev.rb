class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.34"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-darwin-arm64.tar.gz"
      sha256 "90945374a7e4077f75eb6c4cbbdfbf76588e9425b65b15cb787b8a32d63069af"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-darwin-amd64.tar.gz"
      sha256 "cb4b5d6f4a539ff461efb20bbfadb6ad734c4f91216f5c1341d9337967cd8994"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-linux-amd64.tar.gz"
        sha256 "1cc92b9ee4de2acccff25a7ec4e9bd74c4df609425195fb95798e5734002f520"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-linux-386.tar.gz"
        sha256 "ca383454a976f8053cbf45029b8fa3902027b25988e5f804cdc0ff07089bacb2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-linux-arm64.tar.gz"
        sha256 "390c56afdfb52772f1b9976f647a378e3b46be2e9c683326a9da5baff1545861"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.34/mocli-dev-v1.15.0-dev.34-linux-arm.tar.gz"
        sha256 "1e5f23cd9495b8c6ff0eedc2ffcdf242182731c9794f8136fecd6db4da504d88"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.34-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.34-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.34-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.34-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.34-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.34-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
