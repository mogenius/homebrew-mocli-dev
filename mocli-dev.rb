class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.58"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-darwin-arm64.tar.gz"
      sha256 "c045415652bcee69e3fbff4c2b7022cd366bf8cf5d6cee45af5cff7237731975"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-darwin-amd64.tar.gz"
      sha256 "7ae4dab507a90e4fb661d10c389cf4d53ce4cafb1000522677f743b70e1fc276"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-linux-amd64.tar.gz"
        sha256 "f1e76780d6bd0822231e5de31ad8fd4ef4a6c0db4ac4dcea92d84675622e11e6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-linux-386.tar.gz"
        sha256 "7ecb58bfa3f5e08aae10c2e0cda723e46052cdf7c0fd05b1dc13872499572370"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-linux-arm64.tar.gz"
        sha256 "d1f0bcd9bf96af0cfcfbc9fbedb3a4d0ad641ab2aa186c3d059845cfa7f7b185"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.58/mocli-dev-v1.21.0-dev.58-linux-arm.tar.gz"
        sha256 "fca0012bb5d813045206a10847dcc928214e3e793e7d8918c8d0e72361d43f0e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.58-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.58-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.58-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.58-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.58-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.58-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
