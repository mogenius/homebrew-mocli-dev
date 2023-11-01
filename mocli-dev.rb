class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.6-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-darwin-arm64.tar.gz"
      sha256 "ac91f0420e23ebd7a839a9b94da813c84cbe221f61453d8fd9e78363b76c9d23"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-darwin-amd64.tar.gz"
      sha256 "127c8e1c87bec8788870cf4b20f7e8600a0f967424a7365d47642c451734a13a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-linux-amd64.tar.gz"
        sha256 "f36f9bf730ef4aa14ad6142502885fe51cc35552c8b715b3ac1b48b1b638f013"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-linux-386.tar.gz"
        sha256 "b07db7271aee710ed6fa81e94ad92758cbc0c6c895ab25460b5e916a87ba46c1"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-linux-arm64.tar.gz"
        sha256 "24055222b8a03cabd87f0b6cea09a0b7a4e1937901cc8a0dffd1cebf3cee0189"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.6-dev/mocli-dev-v1.6.6-dev-linux-arm.tar.gz"
        sha256 "3182942982c4a91f3b864dbe5338ea08c44f027f5e79bcf6ed9b5fd7818c21eb"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.6-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.6-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.6-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.6-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.6-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.6-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
