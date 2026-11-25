class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.123"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-darwin-arm64.tar.gz"
      sha256 "806c69aa109b9d92cc3831479e1709a3c1e755f14a7d27cb259532bb9b2ce846"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-darwin-amd64.tar.gz"
      sha256 "2b7407433d8177cc2b5f54b790e21c2fba89c55d68ec8a27dbe448318356d6a1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-linux-amd64.tar.gz"
        sha256 "7280d751033ea32bff0fd297cf6d4cd9d826fc71fcc876245f521a91266a73ba"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-linux-386.tar.gz"
        sha256 "9d161a992cbf2aff841bde8e430837ccf20e9c517e2b262726cbaed858d06cb2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-linux-arm64.tar.gz"
        sha256 "bda751a18dfc0eb02f9a9757dc0cc1eb0f45674ccfdf1696b858d11468afc724"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.123/mocli-dev-v3.1.0-dev.123-linux-arm.tar.gz"
        sha256 "32cdbf56d898e37af19f15714252c9fcb222a9e7064f1bb3c94e93d4d417f5ae"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.123-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.123-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.123-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.123-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.123-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.123-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
