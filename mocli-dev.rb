class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-darwin-arm64.tar.gz"
      sha256 "02b128293c0bf3f355906ca3b5719142021715cca087138040e2dc43be215ef8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-darwin-amd64.tar.gz"
      sha256 "14eb8bcf06f1d44c2c0aa4a892d9831050993f56d2bd6be0592a8b4028d25a02"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-linux-amd64.tar.gz"
        sha256 "edc0f9e1aeed303801cd8a148716cc537ed13afbbcd2603174979a2212a57ade"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-linux-386.tar.gz"
        sha256 "4bd1d75cf087ef373e6378a376a0563c07911483541c0ff2ddfc0463608eff26"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-linux-arm64.tar.gz"
        sha256 "ef8698d7118676ad159130a592cd060dfd9428eb81205fa41d7098286429bc46"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.4/mocli-dev-v1.9.0-dev.4-linux-arm.tar.gz"
        sha256 "8988da5f9904189a3e5761e5890634a74a63c13bf5a54dc67f6942b713036237"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
