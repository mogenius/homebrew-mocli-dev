class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.20"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-darwin-arm64.tar.gz"
      sha256 "242fa8773600811c6a802b574a9187dd0f9440d3cf5ca97a14dba5d0630f06e0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-darwin-amd64.tar.gz"
      sha256 "7da0a811e5c57f0919eb3dde131ae230c6b4da48375b59814589325149fe1d93"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-linux-amd64.tar.gz"
        sha256 "873e63ecb3e7d3c8b9ae50ab457511eae7c0aa8c922afb283163a06acc206173"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-linux-386.tar.gz"
        sha256 "52d3a968fbd199d4c1786d8d313d0aa4867d26e4f2fef4241ac67c522bb06593"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-linux-arm64.tar.gz"
        sha256 "18593190f0b7b5d74140c5f7a32b3172abfe37b8543d576d239345ed3a1a9182"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.20/mocli-dev-v1.9.0-dev.20-linux-arm.tar.gz"
        sha256 "741845704c5d8560fdd5090236e88e9e8485887d4ad1216e52e9137c58f75c5b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.20-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.20-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.20-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.20-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.20-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.20-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
