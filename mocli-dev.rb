class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.2-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-darwin-arm64.tar.gz"
      sha256 "973f4d6f3533b52522ec641c6e273486dc1de0d888e7e95f6d76141701eb8b77"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-darwin-amd64.tar.gz"
      sha256 "e2c0119850514f2b115fcde6f953d5c3a46f6a5f03e751c46962f5549ade5d9a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-linux-amd64.tar.gz"
        sha256 "93e9efd681d6999a3c043aedf4640a46320f16e0eda8d2b19023d4da5b4864fa"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-linux-386.tar.gz"
        sha256 "d35eb8ef0483ee3f10ddfb2a9238b4e8dcb47b1257e35e8e285e8cfec8549bb6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-linux-arm64.tar.gz"
        sha256 "40b45fde9840de9bf3ccc89a700c715ae62520687bc5b3977973801af496860e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.2/mocli-dev-v1.10.2-dev.2-linux-arm.tar.gz"
        sha256 "e6925e378d6e2e4c26cbdd881724e4715a0e1144ca0557226020d98d306d7927"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.2-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.2-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.2-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.2-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.2-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.2-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
