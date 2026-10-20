class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.86"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-darwin-arm64.tar.gz"
      sha256 "2e676346aa7b1d793bd10d2391a8cf105c7352b5767bd90972db501a9090aab3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-darwin-amd64.tar.gz"
      sha256 "2bbb5e08ccf6589f15cb791d671164a4a553276f234df2a08092e70294db8e70"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-linux-amd64.tar.gz"
        sha256 "ce9ab9ab08f8f4212c8ed1cd6ffef504bf9c8fc576982d16337282f6ea778f48"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-linux-386.tar.gz"
        sha256 "332bf372c18cb6256d21da976800a9b687e2e1a516c348a894fee889f8482cb2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-linux-arm64.tar.gz"
        sha256 "49d9d7f1896f656d5f3225f5f6f4b932c18834982733e9dfc18e78641f2d95d2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.86/mocli-dev-v1.21.0-dev.86-linux-arm.tar.gz"
        sha256 "0adddbc6446788d2c52fa2d3767c32b8d46a8f2cbcd688c66a68cddaa2258e5f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.86-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.86-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.86-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.86-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.86-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.86-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
