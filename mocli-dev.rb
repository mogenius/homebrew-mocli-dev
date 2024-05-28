class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.17"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-darwin-arm64.tar.gz"
      sha256 "a597c228856113429cd10491888eaf39f6a7ce944451ebd0d7ed158be6c2f98b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-darwin-amd64.tar.gz"
      sha256 "a2c003cf7783f7b8ff0aea600f5480538aff65520afa85f9298c86cb5eff2d46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-linux-amd64.tar.gz"
        sha256 "10902645dca66a4490e8abfd0ec47cdb7be019bcfd3e87eee9a258dc04bcc32a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-linux-386.tar.gz"
        sha256 "2c3a656bef8a9b155fd3f9a3b1e97bb241d536959e60e48203ab2492d0c0cfd6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-linux-arm64.tar.gz"
        sha256 "3a0d4a91b02f889424e138b6d42d76b2569f08769fe393d66440e48014704fbf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.17/mocli-dev-v1.8.0-dev.17-linux-arm.tar.gz"
        sha256 "acf984a8052f22150053a29015b9b72d38203a0e5c0372fdaba96a41f98e0aae"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.17-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.17-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.17-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.17-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.17-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.17-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
