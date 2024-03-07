class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-darwin-arm64.tar.gz"
      sha256 "4ca48ebe073bd11854528e1dee02326083be5200d5fa1908feb5acd7cd4e8850"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-darwin-amd64.tar.gz"
      sha256 "f50797726c18d4a978928e88bb2a8accf849e06fa14cb7acc282f14c809ac985"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-linux-amd64.tar.gz"
        sha256 "714bb6aff72ffe53f576f5fbfa6b387cdb36ffff55f934444b03826ed8c08729"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-linux-386.tar.gz"
        sha256 "0a76be0bc88bc4aef910a0a6e46a5bceb68a4947dadf7c4a59e0e2e800fc6251"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-linux-arm64.tar.gz"
        sha256 "6f13688b359631792406c9d7933b44712fb1cb370be63812d34d332c6e98c47f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.7/mocli-dev-v1.8.0-dev.7-linux-arm.tar.gz"
        sha256 "aa38ee4fc90ea29e10fc7a9ad78f5fedbdac65d6ae2506d952179fadb33ac11d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.7-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.7-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.7-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.7-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.7-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.7-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
