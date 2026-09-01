class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.14"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-darwin-arm64.tar.gz"
      sha256 "e691edf862fe5e9a036e912fdd3f1e2a8849a3078ef139732f62675364b4c8a1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-darwin-amd64.tar.gz"
      sha256 "cf0ec1bbaee2423ffd54d037c80403e1babe72ba4f0b4084101880bf2b6d0a44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-linux-amd64.tar.gz"
        sha256 "feea66e6f240767acab9e79a831d655ded168c4d66c3d18071bd2c8d875a09b7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-linux-386.tar.gz"
        sha256 "885f667a957b339afeb2763f63b22b78c3fb2a43fe79282e9807aa541b35db2a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-linux-arm64.tar.gz"
        sha256 "ab9633468b7b5a7f1218f09e99b32bd56cf89cb449ff3a632df389c59c00ff44"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.14/mocli-dev-v1.14.0-dev.14-linux-arm.tar.gz"
        sha256 "0b38dbf52f4c5aff99904cadead66d9f93cd917d7aff9c262c87365813d4b5c3"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.14-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.14-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.14-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.14-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.14-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.14-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
