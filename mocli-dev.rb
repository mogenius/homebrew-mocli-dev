class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.39"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-darwin-arm64.tar.gz"
      sha256 "4ae571619b33a62421c6e6524cb1da4999cd384ffcf9ff2826486c9d25a7cff6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-darwin-amd64.tar.gz"
      sha256 "89d66d59e25afab6994081485e7a95007bcedbd51be74b2b964464b62836763b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-linux-amd64.tar.gz"
        sha256 "40cfb99ff09c6f92f406c3b180705428438670c955f557feaee6577ed28e775e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-linux-386.tar.gz"
        sha256 "9bed3cef6457b81fb6dfeec9a02f002c02c03a22edc2554f94076ce945a892be"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-linux-arm64.tar.gz"
        sha256 "89ec121826164623bcd44f55948aa6f587c683d1ab2fc9c707a3545ad00ceb8e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.39/mocli-dev-v1.15.0-dev.39-linux-arm.tar.gz"
        sha256 "78921c091c2ef393a43ff8acaf0420b95ac61413095d10f6cc0095fd3f7c0328"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.39-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.39-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.39-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.39-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.39-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.39-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
