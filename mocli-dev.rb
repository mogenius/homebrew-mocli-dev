class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.124"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-darwin-arm64.tar.gz"
      sha256 "89670e32f0bed802e8fd2a2558c4744601a546ee1dd4c1a333471d83e59851b5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-darwin-amd64.tar.gz"
      sha256 "c7833a4401886d10b7b262db467e3a57a6a689bedaff46869984eaa1e0f93c51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-linux-amd64.tar.gz"
        sha256 "9f6ff39c8654033b392019527135ca97ca4e0e828836981d2606a2fe4ec276ad"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-linux-386.tar.gz"
        sha256 "82820740e7d337017bb12a61b9accb36f99c8329251d558c534bbfdfc7611925"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-linux-arm64.tar.gz"
        sha256 "9f0df51c68b2ca435a936d9722dc7a7d3b5479d95d6d2df877453a6ae6e3b0b7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.124/mocli-dev-v3.1.0-dev.124-linux-arm.tar.gz"
        sha256 "9a5163a592f8a874a7a361e3391c0698e6ba7308f1330b655ad31e331863ec5a"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.124-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.124-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.124-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.124-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.124-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.124-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
