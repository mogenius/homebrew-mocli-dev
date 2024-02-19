class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-darwin-arm64.tar.gz"
      sha256 "42dc6944ba69de9af29d1a81e81587fc8fc867ad225b8d24c1be5ef38a4daca0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-darwin-amd64.tar.gz"
      sha256 "8b4ea09db623c8d68e605fba95f8904ea4fd503e16daee5307c13e085c2a1e53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-linux-amd64.tar.gz"
        sha256 "023aaf211d6a3a4c6170f66f9d9823f91690e14a4f7d086b6000e0ddece84c2c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-linux-386.tar.gz"
        sha256 "82f821f5451bbdb45f1252db724b9ebeb04f59b081d7ea52c887a162925e24b6"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-linux-arm64.tar.gz"
        sha256 "4bde354e2b403051732ee5819f67dc7191a0736913038227fb7bf51819a1cc7a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.2/mocli-dev-v1.8.0-dev.2-linux-arm.tar.gz"
        sha256 "d99f40845c14aee2250722eaa4545403af05ca86baaf6c3b6ee1e1363c4809f9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
