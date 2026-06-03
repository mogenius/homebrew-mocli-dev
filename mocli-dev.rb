class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.1-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-darwin-arm64.tar.gz"
      sha256 "7b56b5fdc7e20687070999150b454d5ddfef63131f22d0ac933d3f309eeb0b62"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-darwin-amd64.tar.gz"
      sha256 "370e82fe16806a9402d23d35dae53920471a341c6ea409b6bdd9265c31d623aa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-linux-amd64.tar.gz"
        sha256 "d813815a70dfb2f5070b84234e319241d2a020d39c861930ae85b385dcae8e3d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-linux-386.tar.gz"
        sha256 "a34d0b8aef5278d3bc16ccef037e7d0d46064a91574146dab3e962eb4dea87d8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-linux-arm64.tar.gz"
        sha256 "dcc87c62fb4eaf3145fe1c370957995e8e3258519a2dc566386dab2774da08e0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.1/mocli-dev-v1.10.1-dev.1-linux-arm.tar.gz"
        sha256 "9df7c70767d854770d94b49d9930f4d0c7649f3d1ad3bcbb0fafe7f7ca81bf60"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.1-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.1-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.1-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.1-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.1-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.1-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
