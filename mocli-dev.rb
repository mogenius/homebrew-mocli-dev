class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.1-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-darwin-arm64.tar.gz"
      sha256 "1714ac4433ed675e99ece29434879f50db08bc77935e4cf9d71f4023458400cf"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-darwin-amd64.tar.gz"
      sha256 "4dc0ef608124b8e8a2ef9043bc93379477998d7d1345baa5e28fedff8082752b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-linux-amd64.tar.gz"
        sha256 "91f810bd569ca9d75849475d5f937ca95c7f68eaa94165eec7eab552c6e0675f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-linux-386.tar.gz"
        sha256 "be0a7479ea80d9d2db35e9150c2dbc25e12f2dac45b861bf863f4d04eaef4e1d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-linux-arm64.tar.gz"
        sha256 "75c6667af8f777c58a04983632f1cf3fc5004b45c79c7572c86204466302cfe0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.1/mocli-dev-v1.8.1-dev.1-linux-arm.tar.gz"
        sha256 "8763e360ad19b6329991b3b970cfe50fa169302b6ab468d214d7b550f266c8b9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.1-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.1-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.1-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.1-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.1-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.1-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
