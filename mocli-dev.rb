class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.13"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-darwin-arm64.tar.gz"
      sha256 "75a9eaac5a4e8b164d55ca7613438a4b4ad412d8e965220cdb9eada60252df84"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-darwin-amd64.tar.gz"
      sha256 "6a7c0e46717af51973480c1187e15bcc952aad1ff82b2aa7807fe4ff7fe63339"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-linux-amd64.tar.gz"
        sha256 "9a2cb78c9300b6c116348b7198952c3b0187f2a6f2be07de00e89cf77a4ca47b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-linux-386.tar.gz"
        sha256 "7bc3c6e1fc7bf030c28c6025fdf63d4ebc49b08cd216e07d3a30aca423a78308"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-linux-arm64.tar.gz"
        sha256 "e77bab192eab4b669affdf30f7bf5a766ad98c90a5de4d1478659f6954a9929a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.13/mocli-dev-v1.9.0-dev.13-linux-arm.tar.gz"
        sha256 "44c9380975227231b2fe8a0d9a81adca2c367b8aec450e29fd3e8ab3f25c57b0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.13-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.13-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.13-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.13-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.13-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.13-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
