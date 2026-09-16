class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.24"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-darwin-arm64.tar.gz"
      sha256 "b60d73502cd3148624b3ef97b93499d7621936d82c7d0c1d92ff308a43507848"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-darwin-amd64.tar.gz"
      sha256 "4b930b3212032ef260176b9155e5218159ec80973c446ca968e0a9e2499b7a5e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-linux-amd64.tar.gz"
        sha256 "4301298732931d197a323204bd46bf72389983a9873db4cb3901a0b19f092ce7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-linux-386.tar.gz"
        sha256 "16d00dbcf3805c0a8908830b538c5b6c24f156f3cf9e7511b16363b87af473a9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-linux-arm64.tar.gz"
        sha256 "e8e7c8ed91154cfbc7685c8717326ea473c4355aedd322d3726b9ac70bc60519"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.24/mocli-dev-v1.14.0-dev.24-linux-arm.tar.gz"
        sha256 "812cf2840d49e38a7faeab24c45c09ea7c5ea12c590931141cf2f4584ca62fb6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.24-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.24-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.24-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.24-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.24-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.24-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
