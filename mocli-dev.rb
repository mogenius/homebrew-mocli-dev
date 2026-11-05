class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "2.1.0-dev.103"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-darwin-arm64.tar.gz"
      sha256 "e843de780dbea54ef8b2e679315733fb8437c9086dfbf46496e92681a4ae7b36"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-darwin-amd64.tar.gz"
      sha256 "756ce0cfd98da71ab2425b2f4eabe6023abee771b3ce0198ecc8acff08b2c5c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-linux-amd64.tar.gz"
        sha256 "52d2602dbb287711828ae943691e8df10a700db909bcc3355fc03664e4736fa0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-linux-386.tar.gz"
        sha256 "55b3ae28bdfe0f5f6abf6a84bdf28d37111ace16a3b0117f021141f6aefcdd61"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-linux-arm64.tar.gz"
        sha256 "daf2845e4947c3a022a57dfda6259aaf5cd1d0fc0d32da0bae284d85a4e6e878"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.103/mocli-dev-v2.1.0-dev.103-linux-arm.tar.gz"
        sha256 "2ef5aecd57fb2f62f7556b4c1b594511dd7dd192c0d733c4c214da3edf397add"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v2.1.0-dev.103-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v2.1.0-dev.103-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v2.1.0-dev.103-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v2.1.0-dev.103-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v2.1.0-dev.103-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v2.1.0-dev.103-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
