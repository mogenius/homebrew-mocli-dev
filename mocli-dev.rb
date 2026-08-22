class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-darwin-arm64.tar.gz"
      sha256 "53769319a989e4019c8601a6997f78fc76fac54a1eaf4814265dff5afe3f352c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-darwin-amd64.tar.gz"
      sha256 "7e32b70b4b1d173b8d92f4a4ac948eeac16183858cbd25a52cd14cb793f88a91"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-linux-amd64.tar.gz"
        sha256 "3da96f2f7c4de619edf1a4c5095112b7d909b25eeabf93b9b9226fd1a54cff20"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-linux-386.tar.gz"
        sha256 "aca880cce189468a17f419e53150c631f3d00c1593925bb3e49cf64069e0cedf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-linux-arm64.tar.gz"
        sha256 "fc7bd9375df6f2fc9060a77d6ea61f094f55b4dce1c760192e3439c83d8f6f7e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.9/mocli-dev-v1.14.0-dev.9-linux-arm.tar.gz"
        sha256 "8d81ceedffa26cb92aefc8c14b1295d8221fc7c0c848d2c8ef37f6e062aa85d2"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.9-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.9-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.9-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.9-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.9-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.9-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
