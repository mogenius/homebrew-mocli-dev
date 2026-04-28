class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.18"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-darwin-arm64.tar.gz"
      sha256 "fc16037abc87be60f2ab3b372a7974a2162ddd14417ac04376a35d4dca462042"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-darwin-amd64.tar.gz"
      sha256 "503e35c15f0c1507cced95e64115cf37d628008a51b063e0d713376b3cdae0c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-linux-amd64.tar.gz"
        sha256 "71e3e45488b52b25f31c64d10edf4e1ab38ee2ae3b65f0ece175ff1e3865d721"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-linux-386.tar.gz"
        sha256 "8b52283edd7e59e6cd5937bb6ed5b5bfe9dfdd4fa9035b3ee2f4209c08b9644b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-linux-arm64.tar.gz"
        sha256 "26b20a8f6d0e0f734e8a7a10eb8c4fd5f436ba9c2cc34784b740519b793e8594"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.18/mocli-dev-v1.9.0-dev.18-linux-arm.tar.gz"
        sha256 "96b96f1e722e5d8909d86ed5362fcb37f27600df3212b68c034a3aaf1fdb98c9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.18-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.18-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.18-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.18-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.18-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.18-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
