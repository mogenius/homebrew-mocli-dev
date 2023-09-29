class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.3.7-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-darwin-arm64.tar.gz"
      sha256 "7359f4e51694af413d443dc6a929e3a8a4c89679e82315c8473a93b6aa4344ac"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-darwin-amd64.tar.gz"
      sha256 "3556ab7dda0e2ede03d1acdc336768e21cf9ac681029dc7661c51b70fdd204df"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-linux-amd64.tar.gz"
        sha256 "7c737f249a38d92ebb60d95fc73a95f7a402cd128e2253c999d61468e7b3c016"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-linux-386.tar.gz"
        sha256 "503cc103f176b553a5b787f5e5f67c79d4c317abd0903be964d7b10551d0b127"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-linux-arm64.tar.gz"
        sha256 "e1cfc045236dee2f2fe9bee753397992fb0bbd808456747da6d2d851dd07c262"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.7-dev/mocli-v1.3.7-dev-linux-arm.tar.gz"
        sha256 "0eeee53bda8d33b59e2c16e8e4ffbd9ff1dd2d5f0bfa6047a2244197075874c7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.3.7-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.3.7-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.3.7-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.3.7-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.3.7-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.3.7-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
