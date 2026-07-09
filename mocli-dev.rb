class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-darwin-arm64.tar.gz"
      sha256 "c3731193769d0e1a634f6264507ec8dede4f81cbd3d9d5f72b98c54968a8a342"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-darwin-amd64.tar.gz"
      sha256 "c4b025ca34a9bc74e2f98f2d431a73bf84a5416b2e5a06ddd28f1564179e5574"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-linux-amd64.tar.gz"
        sha256 "33d0356b044443ef0e9dbef62d747314bddb54ddef70fca579b3aebcf67d0866"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-linux-386.tar.gz"
        sha256 "d917a8ef158ba2b752a6b680154ae8ab18a021b112d44d98988c7c2a94ffcc5f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-linux-arm64.tar.gz"
        sha256 "64c8f96046f87d5fcb47e125b744ebb838f88b8156cc5e1d470cdd65383b3a1b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.8/mocli-dev-v1.12.0-dev.8-linux-arm.tar.gz"
        sha256 "d3fc06e45641251c43171b599fee71252c5860e95e8b318cf2dade1506a3b493"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
