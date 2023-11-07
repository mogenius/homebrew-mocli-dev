class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.7-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-darwin-arm64.tar.gz"
      sha256 "21e3fa3a47af902500b7574ca604966149f104fe103c2c1d3b80f55bed6da1ba"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-darwin-amd64.tar.gz"
      sha256 "5b155f2ef69fc92982ccdbd16ec0d7cb24083b952155c652fd62b1f9b034ef1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-linux-amd64.tar.gz"
        sha256 "21c153014c45e8c5d204899dec96c86fb289a69876bc6869b39b8f3d5beb20f9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-linux-386.tar.gz"
        sha256 "acea07d3db2a2e734645f2f9c95f65193d1aa9bd13c616d5c1bbc97462b03445"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-linux-arm64.tar.gz"
        sha256 "60c430bf6404296c96502f7e6c393ca0f9c2993178eb37727ec31601d2c055e9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.7-dev/mocli-dev-v1.6.7-dev-linux-arm.tar.gz"
        sha256 "b474ca18ff9e76f8a861b0736f78d7f15f544c637d6230d2f70e65cb6eef1fdd"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.7-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.7-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.7-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.7-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.7-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.7-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
