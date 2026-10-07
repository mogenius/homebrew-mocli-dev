class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.71"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-darwin-arm64.tar.gz"
      sha256 "27f528338164f5aa36edf87650fc8a4e50e8d61f63b45b814a83d16040cf39c8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-darwin-amd64.tar.gz"
      sha256 "6cfb556684dead9262a67d439bcc37d8d3dfff7440f7c4b12e2860b1d979f596"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-linux-amd64.tar.gz"
        sha256 "172e9f1c55191bbb2ebd6a67fc24ea872425cb7014ff8597980933b3742da54d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-linux-386.tar.gz"
        sha256 "8b112a10bb4e9d548fc38384c6214aa11bce70d68e1b4be16edc44a3f2111229"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-linux-arm64.tar.gz"
        sha256 "d4477048f9070265729cc01e0129abca7e2de0c92fd59caf70c61ca7236a6525"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.71/mocli-dev-v1.21.0-dev.71-linux-arm.tar.gz"
        sha256 "763583476b21137900031e22aa040bbbf89d101ca99c6de56e1f987b4b686631"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.71-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.71-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.71-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.71-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.71-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.71-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
