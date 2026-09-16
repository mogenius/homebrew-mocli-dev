class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.32"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-darwin-arm64.tar.gz"
      sha256 "c987f069ae908e3a377c3a4f157f51f742e68b5efbfb89e56b37f056301bd116"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-darwin-amd64.tar.gz"
      sha256 "e091516482862cd822b9deb6b07f146e25c596a559e9ac6c2b48afd9831c806f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-linux-amd64.tar.gz"
        sha256 "d8ab44d1a3b2fa7d7b07a8972f2d6a51e2e21d1f46d0a566c7a9896008708926"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-linux-386.tar.gz"
        sha256 "26c07db368c2e072fbaaafba137943a1d2a4d2f2dd21826e58f8fa1e8e582202"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-linux-arm64.tar.gz"
        sha256 "50f1dec94c116280555aee37bd2d4f4ecf5393a9736dd81953f7d470a6c75c56"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.32/mocli-dev-v1.15.0-dev.32-linux-arm.tar.gz"
        sha256 "31c20fecbac0a61fb1c0aafb4d91e4cdab39b2467ecc30a5d0792df3304af831"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.32-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.32-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.32-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.32-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.32-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.32-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
