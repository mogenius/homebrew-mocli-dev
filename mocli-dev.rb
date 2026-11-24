class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.122"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-darwin-arm64.tar.gz"
      sha256 "9110a5a84302689aa6b917e16a8b1fb20d53dd4202ed58b09097532851792558"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-darwin-amd64.tar.gz"
      sha256 "a8435e5b146fed15614688d9c098b05b0ef9304f0bdff2a05551159b307b7c8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-linux-amd64.tar.gz"
        sha256 "3f4a140743ec8fb266887d9abcb26ff435b75c914c7e172d5f38b6c86a46e68f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-linux-386.tar.gz"
        sha256 "f89e2c136f3299c4dc3e1dccccfc9066f133a035cc9c3d3faca41cfefc207509"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-linux-arm64.tar.gz"
        sha256 "9bfc4dc0ac3304ff08f0043cb8ef7d59a85c13cf5c7087a5d674a7aa2af8f953"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.122/mocli-dev-v3.1.0-dev.122-linux-arm.tar.gz"
        sha256 "0a04ee19500a19a7182f4e0599dd5c4f363fe1a0fd427b3bdebf4a30afc81512"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.122-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.122-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.122-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.122-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.122-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.122-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
