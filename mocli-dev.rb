class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.18"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-darwin-arm64.tar.gz"
      sha256 "dc82d41ef2852b302586558b36d70f35db28f160d7ba9e6a0764773934a285a4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-darwin-amd64.tar.gz"
      sha256 "56a212503cd97ea90e367bcf8d9741a9a245df9293ccb7a425ec3b2341055b94"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-linux-amd64.tar.gz"
        sha256 "65a72d506022d651b3a5a18a6d46aae00641e7b4c93e233788111a7f4e32f884"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-linux-386.tar.gz"
        sha256 "5bab95a09e2900ebf80e645e619119d2137b6ba21cd111fbbb2a52cc9fec4859"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-linux-arm64.tar.gz"
        sha256 "3c8a0d924f917b8f612d33dcb8aef0188f4d20d44b5a0fbc2d29a3dfb24da0fd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.18/mocli-dev-v1.14.0-dev.18-linux-arm.tar.gz"
        sha256 "8a1d841882dae51c00fa1c0a2609ef72593142baaf15bb784772c4beb98589da"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.18-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.18-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.18-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.18-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.18-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.18-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
