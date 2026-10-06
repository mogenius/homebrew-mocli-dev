class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.63"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-darwin-arm64.tar.gz"
      sha256 "9ee863a680551a13b45a971a18e60bc7f4f7045dabc549e195ec703710f3e3db"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-darwin-amd64.tar.gz"
      sha256 "bad725545939624b78ec4d6238c2c4ee2cf22fc29b01f2c12a079fd82ca98707"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-linux-amd64.tar.gz"
        sha256 "18909628f3610c26423e8cdbc6dba9833bb8d83a17c1954da31c0e55a03c02cb"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-linux-386.tar.gz"
        sha256 "60611e5397ba11efd2325ad221f1d7cb4c2d6920a42ee724f04381f6eb57c98a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-linux-arm64.tar.gz"
        sha256 "39bd63cf8f5f43c4a5d983edcde8936dfbfb55d30655bd5a1f3061479e2bf4a6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.63/mocli-dev-v1.21.0-dev.63-linux-arm.tar.gz"
        sha256 "7af01e04fedb4c0a5589b06c3bd0ae02c7b819e77bddf81ab70b98efead37d65"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.63-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.63-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.63-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.63-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.63-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.63-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
