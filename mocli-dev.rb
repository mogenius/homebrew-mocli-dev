class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.11"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-darwin-arm64.tar.gz"
      sha256 "55b838ab9e15ede01cac4351ddc848f8caa413e5cd9d11b29e5878cf70fccf17"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-darwin-amd64.tar.gz"
      sha256 "35b6ef466ec90820a29c7fd603756189826fa097ce184941127cd667ab6f90bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-linux-amd64.tar.gz"
        sha256 "76324f7c7fe52dbbc9f8d124ca4e533488da304fb72e5155344aa7e73804ffc7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-linux-386.tar.gz"
        sha256 "a661f07f5bf452220dc3b0e4e2e0f64e199e34cfe652fdd5f7ba079efb50c407"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-linux-arm64.tar.gz"
        sha256 "2a4c99adc748977ec9070fa0834215f99d49aa517745ec0235349a338dad080b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.11/mocli-dev-v1.9.0-dev.11-linux-arm.tar.gz"
        sha256 "aa32fce4d10032eaa6a38e901c1b224208675cfae16d156a97c03478f0535a3e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.11-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.11-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.11-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.11-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.11-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.11-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
