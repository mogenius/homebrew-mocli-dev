class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.42"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-darwin-arm64.tar.gz"
      sha256 "b858c28bdd430a2824f7a9bb2565a0963fb8d6fff9d22a50b0f5a37c2737df5d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-darwin-amd64.tar.gz"
      sha256 "57ec862ebaef5233ab326f3911bcaa2b7f81e9c41fcf5d4518b391450f17e893"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-linux-amd64.tar.gz"
        sha256 "81a6cda7a60aac83cbdf57bdb0ed1fa4ecd95b4fa44d48766d7bfc851fa69ddf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-linux-386.tar.gz"
        sha256 "1e610c17538f74163d64840add37fd3fe93ccdd795d56c9b0c607c09f879c35d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-linux-arm64.tar.gz"
        sha256 "74cdde4308cf054c289e46733aa93ae861d187958b9fce61f40aea29c89ea702"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.42/mocli-dev-v1.16.0-dev.42-linux-arm.tar.gz"
        sha256 "e4b6f80c7756ae2a96d358e6172e09d8de71d3903f75a7d9e3f3abc977ccf754"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.42-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.42-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.42-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.42-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.42-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.42-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
