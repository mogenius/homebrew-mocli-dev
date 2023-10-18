class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.5.1-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-darwin-arm64.tar.gz"
      sha256 "17ed0d39680b91d997a9c10586c8a2305a80915b04a4bf04b43e6ac68b44dbfc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-darwin-amd64.tar.gz"
      sha256 "a478e73bd2fbf5d3833e15208c788b54e46b4f8d5591d20578911a862293b577"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-linux-amd64.tar.gz"
        sha256 "11b778b71882fbdb196c1ee40811a72f2e74c16cbc6973d708b5792e13229366"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-linux-386.tar.gz"
        sha256 "7607c8aaf871705675f5a32d599eda334fd4ea98f8a800ee341e6112263a2c18"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-linux-arm64.tar.gz"
        sha256 "774a59af571c16edbef2bbe68d2fa525ffd921857e8f67ec478ae3871c775faf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.1-dev/mocli-dev-v1.5.1-dev-linux-arm.tar.gz"
        sha256 "6b8ba9b5d04aece059da1ae9aeee59027171cafa72cbd5244b613de994adab0f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.5.1-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.5.1-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.5.1-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.5.1-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.5.1-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.5.1-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
