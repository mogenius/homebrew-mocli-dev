class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.93"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-darwin-arm64.tar.gz"
      sha256 "806a0381bd32e47707a94168136ce6ff94ddf5ac65c9108c60d39a0c871a955c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-darwin-amd64.tar.gz"
      sha256 "72ce2e38cdda770c443bffccbc5ac7935c5325695b8568845fb4aed3255a9383"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-linux-amd64.tar.gz"
        sha256 "12ea6d4e0470e114b4e11872c047c8f7916077170647c01e71d970e617f88f80"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-linux-386.tar.gz"
        sha256 "24d142e11244728a3690b199ca9cb819c3a83da81997fe79eda28a692e1a7f7a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-linux-arm64.tar.gz"
        sha256 "01f7973cfd4e9ae14da8603d54b2cab322bd5539f5f6f3da33879bf5975802d3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.93/mocli-dev-v1.21.0-dev.93-linux-arm.tar.gz"
        sha256 "d1c1dbb7effed29fee0349abb4baef6a427712bbc9507d0523e4b6907749e3d7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.93-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.93-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.93-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.93-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.93-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.93-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
