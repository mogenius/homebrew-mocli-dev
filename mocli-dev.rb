class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-darwin-arm64.tar.gz"
      sha256 "07a4cf0fb04092f30c537d0990f502ab9e81500118d8e5c56eae8b39d9fed856"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-darwin-amd64.tar.gz"
      sha256 "89497894ce777846a9c2803b3419a31ac57fc0ad5d6ae0b582ecf15471dc01cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-linux-amd64.tar.gz"
        sha256 "53b787457cb5866e42ddf7236412e0933e90e8f1a32763e73e4f4c0b6bd7111d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-linux-386.tar.gz"
        sha256 "399d01fa4b413e9ed10fc821df077cad232b3b49a1c50c3acd301a87cbe8534a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-linux-arm64.tar.gz"
        sha256 "78f9bd52ab00cfcef35c1e391c1890d8f6b6a4b47e43288070aa2eb8f4f6d973"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.7/mocli-dev-v1.9.0-dev.7-linux-arm.tar.gz"
        sha256 "8826719b699448cf999b93954b8b2f689da452c172060d0af9bd721dac5f66ed"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.7-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.7-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.7-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.7-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.7-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.7-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
