class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.43"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-darwin-arm64.tar.gz"
      sha256 "7357c1a5b2f7a7fedab51c71cb36712e2b3478ff83cb678feffec7b42803a82e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-darwin-amd64.tar.gz"
      sha256 "e356107f71a63561f0cb675c72cc69a6174cc6931f6598ebab89c222b949d713"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-linux-amd64.tar.gz"
        sha256 "791124de2814008eac6743478d54406980d31c3b80769314732af794bc8931ef"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-linux-386.tar.gz"
        sha256 "338336cea5aca34555b6757d2f1aa7130fc2d495fb2f077041ffcb91ee75b5ca"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-linux-arm64.tar.gz"
        sha256 "b39f710496c31879ca43182dd14590c9ce2ffbfb23464d25a1ce132442da319b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.43/mocli-dev-v1.16.0-dev.43-linux-arm.tar.gz"
        sha256 "55bfe7d0aa28d61453167d5bd97c1ce42ca002fd6b82d52e977f5959a05e03d9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.43-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.43-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.43-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.43-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.43-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.43-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
