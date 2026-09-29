class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.57"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-darwin-arm64.tar.gz"
      sha256 "bb22b92b1f5a46415f6c19949cd7acd0af27e7a8f0f5549a778dd71e53385b1a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-darwin-amd64.tar.gz"
      sha256 "8d097448f2a025e9a834187c6e1042fcb5d418eb49c752b4c0c307c007138d9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-linux-amd64.tar.gz"
        sha256 "dbb6bab8d26ecb3f13b7cbdacb6614362fdae3eb02e8d7133837880fd5f22f69"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-linux-386.tar.gz"
        sha256 "0690652482809089feb7f5e62dcae15f82af745b0bc535a2e110b1131a0835e9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-linux-arm64.tar.gz"
        sha256 "64e3e9c4c992295f95347107bbecc6bfedfc253a2da041ab05079785b072e1e0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.57/mocli-dev-v1.21.0-dev.57-linux-arm.tar.gz"
        sha256 "71a30a549d25eb481c65fd63e33c990989f8097dea1c334548da09620af3470c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.57-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.57-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.57-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.57-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.57-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.57-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
