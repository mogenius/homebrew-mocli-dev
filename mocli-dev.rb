class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.12-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-darwin-arm64.tar.gz"
      sha256 "91ea4ee4bb1f4fcfc27e22b1b7022e92c51d487a4a9d37b18ef4cffbbafc0701"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-darwin-amd64.tar.gz"
      sha256 "bf1e4ee0139eb2f48356cbd9332cb3778214a4e3deeb4654b619bd41e1d7ab46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-linux-amd64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-linux-386.tar.gz"
        sha256 ""
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-linux-arm64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.12-dev/mocli-dev-v1.6.12-dev-linux-arm.tar.gz"
        sha256 ""
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.12-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.12-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.12-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.12-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.12-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.12-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
