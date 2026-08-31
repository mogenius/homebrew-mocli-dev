class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.12"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-darwin-arm64.tar.gz"
      sha256 "92409e78d201713910586d9937362107845bbdfa4df3c335da60b5f4f64b1be5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-darwin-amd64.tar.gz"
      sha256 "deef649c6533becfafd892b9921cdc5b0c64a4758ad710a2e04745d177d747b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-linux-amd64.tar.gz"
        sha256 "8df42f0e8a81a2fd1a985ed9b2998b96e54afabbaddb9b73447f65d97cd91b91"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-linux-386.tar.gz"
        sha256 "f83d56004686ca69e6888c061b8c29447869c8e8e7d7684052b017c93a8c67a0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-linux-arm64.tar.gz"
        sha256 "35968ba9a27075ce54b60b421a96a1ee82047f1cc2c24ea0bb0639bdc788183f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.12/mocli-dev-v1.14.0-dev.12-linux-arm.tar.gz"
        sha256 "c439fc63679f4b2656d39fc050a9d06f3db616a159de52bb0bf655a1f2672011"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.12-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.12-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.12-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.12-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.12-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.12-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
