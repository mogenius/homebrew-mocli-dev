class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.2-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-darwin-arm64.tar.gz"
      sha256 "fc1045fe74172d57e519bf5759bab266186551561430d34d12e32c9106285045"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-darwin-amd64.tar.gz"
      sha256 "8452d491c7c2457dc73cbb68599f6fcd37cc23b0275fb8fc5d58439a4fdd6a50"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-linux-amd64.tar.gz"
        sha256 "9a657d58e58ad7f601927aefbeb91de8950c3c94ea47157db823d22dc55f1ac9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-linux-386.tar.gz"
        sha256 "460e3d07966cb5ea27dca7cf38e193f9a449a77362c72763928a31cccb16d5b1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-linux-arm64.tar.gz"
        sha256 "e0f6c561623057239b6e6506b15728421d6cf56e4329fa749483d3e2c374e329"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.0/mocli-dev-v1.10.2-dev.0-linux-arm.tar.gz"
        sha256 "b94fd30000d382b48cf8c81aace902decf62be81ec4fbfa3bad743d57e54cefa"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.2-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.2-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.2-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.2-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.2-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.2-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
