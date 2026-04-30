class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.6"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-darwin-arm64.tar.gz"
      sha256 "4557cc0558e96d0a1687ada42217b0394114693c40def6982e5080d78a7a79dc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-darwin-amd64.tar.gz"
      sha256 "9b200f819d045da20abe227671e412abb10f2a68b1638a4f1ebe6f714428cd6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-linux-amd64.tar.gz"
        sha256 "54f1bbaef5c70c0ad8568e82abd0720c3a6dd86ce19005f4bf6361f7e7532b1a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-linux-386.tar.gz"
        sha256 "22443a5a00d4f3204a803e82ce71828b102009264ce35c3b6ace12426d842b4c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-linux-arm64.tar.gz"
        sha256 "20092be226c88514c819550d359dbea778f2ba42992f9e1f6440ebe2ffc584da"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.6/mocli-dev-v1.10.0-dev.6-linux-arm.tar.gz"
        sha256 "946fc1355ff277520cfde2e0e31eec63c4e9303fc9e288a8a95cb8c8510511cb"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.6-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.6-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.6-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.6-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.6-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.6-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
