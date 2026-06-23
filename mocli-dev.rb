class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-darwin-arm64.tar.gz"
      sha256 "4d8cfbd7901424658796a544cf692e7885f087a2fc1a1a1597208f7843e018c6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-darwin-amd64.tar.gz"
      sha256 "eeb9a189bf08153ffbea89e6960838183037bcd88389da8f751680a21871d5c7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-linux-amd64.tar.gz"
        sha256 "2b6ca15d4cb42fe67a927bffc47cd19cc5f9fcf3d4555e5e377641e2bc92a1a9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-linux-386.tar.gz"
        sha256 "f82a46fcfac23662a901ba97d4f5b20c0267d37ff888d55801429fe82804f5a5"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-linux-arm64.tar.gz"
        sha256 "69b271957e04cec4581c549d32dbe762ae5acd77bb7920cfa0302e6f9298b261"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.2/mocli-dev-v1.12.0-dev.2-linux-arm.tar.gz"
        sha256 "8b2f2271ee91b4a1fbc1c49687d4321b3a6746ae9f6d59051948c5c1ab981063"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
