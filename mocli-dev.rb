class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-darwin-arm64.tar.gz"
      sha256 "090b1246f663dcddf9914151780cd5d83165220157263a7bcecf5d6d337e3d03"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-darwin-amd64.tar.gz"
      sha256 "1eb6507b27826f69d249debabe81ca0c395d508f8df05d81a021bde2d836bc7f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-linux-amd64.tar.gz"
        sha256 "08800118879ec2b87aae2a103cf28dd685cb6cb55ff82197fe980182a2091044"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-linux-386.tar.gz"
        sha256 "f36fe9ffcc041cccff57f6963dd82fd0455ff0930167452e10e4727906299996"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-linux-arm64.tar.gz"
        sha256 "ac0a223389c5cddc6ddbdce78a3800f00c5b26b11d77530260bbc5d33d52d0b4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.0/mocli-dev-v1.10.0-dev.0-linux-arm.tar.gz"
        sha256 "2fd0081dde0b47346c1a26a886b7f7510f52320b046746130d21d2fabb521308"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
