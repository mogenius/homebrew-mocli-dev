class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.1-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-darwin-arm64.tar.gz"
      sha256 "f1999c93cd616d76839f832c15827b53552ca451ab0ad0c0c0c8c2838f859908"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-darwin-amd64.tar.gz"
      sha256 "bb4429918d664dfab684adbd67cc7e23ff41af5739ff47e72f1161ec462963f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-linux-amd64.tar.gz"
        sha256 "93e45504322ec841cedd1f291d592294b6a0f85189516d159d30f79c2e2a1bb7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-linux-386.tar.gz"
        sha256 "9cdb5e636ce16d50ddb632486e8d63d136842ddd6adaa17baab49aa6804d52e6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-linux-arm64.tar.gz"
        sha256 "6d696206ea2ec72e3d924a6bbcf37baa01d43ab7dddad2a984dd4cd990f3436e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.1-dev.1/mocli-dev-v1.9.1-dev.1-linux-arm.tar.gz"
        sha256 "3040ad79d9889b45b030330bb3464cd9f3ebd2952f66b4077f4e17a4c5c00c8f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.1-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.1-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.1-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.1-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.1-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.1-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
