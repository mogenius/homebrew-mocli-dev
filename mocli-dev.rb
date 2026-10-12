class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.76"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-darwin-arm64.tar.gz"
      sha256 "e3a820e067ed977db1a772ea75b3784a9c8755368186dc82b1e1b472f927cd2e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-darwin-amd64.tar.gz"
      sha256 "c28379fe732efb43a8aa820b94e987b449f8c8b1af7a7abf6738fc788af064f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-linux-amd64.tar.gz"
        sha256 "6d020d03a6233a77d1c169be175f7ea7f91292f76a4a5120562353125c3e1fc1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-linux-386.tar.gz"
        sha256 "4902c462ef3cabc767879545f985a4e984dda5dfbb7dda15b46a8d10002f470a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-linux-arm64.tar.gz"
        sha256 "23c879dbe0ce54a9cc21cede292a43df18a0127153cc5e954e8632379a37f5c6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.76/mocli-dev-v1.21.0-dev.76-linux-arm.tar.gz"
        sha256 "a42118c2cc5d4632ba79e25cdba5ac0f632c42359e36511feb9b01bc9362c427"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.76-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.76-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.76-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.76-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.76-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.76-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
