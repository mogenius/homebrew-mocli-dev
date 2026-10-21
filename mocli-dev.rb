class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.87"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-darwin-arm64.tar.gz"
      sha256 "6ccb1d08671a19369964a0b96b86c8d16ab61ae2299912abf92f10c933ef37ef"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-darwin-amd64.tar.gz"
      sha256 "dac385a96b90bfb0180317c64f24fd342571973ca2ef986396c5d5be796be7b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-linux-amd64.tar.gz"
        sha256 "bba26262b724424b4c41bc01282afca02bb7386cef994c14c5e9c5e90c6d506d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-linux-386.tar.gz"
        sha256 "cd56b82ceacc936d63b2a82a6b913a76b80c1f5cd4b7aa7882de004947567b13"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-linux-arm64.tar.gz"
        sha256 "03d1ecfdbf2759d3bd8fa85d5ab15042a4ea2720ce5899d56549f20df37bdb09"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.87/mocli-dev-v1.21.0-dev.87-linux-arm.tar.gz"
        sha256 "d87d2785e15cce66abf5d5831d73425ac03fa904acbf6a40527aa41b2d975455"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.87-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.87-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.87-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.87-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.87-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.87-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
