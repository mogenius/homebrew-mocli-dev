class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.10"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-darwin-arm64.tar.gz"
      sha256 "3552a82d34eee1570d60e92ad2cc0d6ba0df92fbd98aeb3ac36e9f5850f730d3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-darwin-amd64.tar.gz"
      sha256 "e6a0f8b305a64a26f8c1d6ca346d982c1fbb7586bd00dca945a446399229d085"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-linux-amd64.tar.gz"
        sha256 "a807714a4aa5fcefbb92a75b40d566a07483dcaa9e64304c5b5bde09b0ba1fa2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-linux-386.tar.gz"
        sha256 "1b0e4cc44ec05019c52af9273e29fa04bf83e081feb5f05e63a0c4a1214f2629"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-linux-arm64.tar.gz"
        sha256 "bb0aeb2c60e3f98daedf06fe2acc362113d394679a98fc53c220be680bfdbb4e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.10/mocli-dev-v1.8.0-dev.10-linux-arm.tar.gz"
        sha256 "3d807587a2fedbb62b119f413fd8ce4abef24800fd1d9a4aafbcea3319449dfc"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.10-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.10-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.10-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.10-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.10-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.10-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
