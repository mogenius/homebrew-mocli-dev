class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.6"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-darwin-arm64.tar.gz"
      sha256 "bfefee0c36d14c3fdbb18f53cfdbf8f22bbc9b703d10c8ee63d8bf928447db01"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-darwin-amd64.tar.gz"
      sha256 "3d5f4c28e66c9e1a1b8c8dc1743ebd09c926850cf6395cdeeb0e6a897e931918"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-linux-amd64.tar.gz"
        sha256 "5ca645aa02fc92a266c68f058c961b87cca9e285271f4362e182f8d7c37269c3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-linux-386.tar.gz"
        sha256 "6ff5135247f22a7289112e17eab29b7b52f93da5801c0c8381bc7e1e772725f0"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-linux-arm64.tar.gz"
        sha256 "e628ecc43fcbd4240e2a95774f3625d81fccff6c7f78c6c4c49ebe36ec6ef97a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.6/mocli-dev-v1.8.0-dev.6-linux-arm.tar.gz"
        sha256 "82926849a6b1141c4ef4b14501f4fcd93fb3199776cc22e7e597a80213e2e79c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.6-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.6-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.6-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.6-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.6-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.6-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
