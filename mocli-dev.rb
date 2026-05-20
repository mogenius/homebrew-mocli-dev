class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.1-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-darwin-arm64.tar.gz"
      sha256 "23a650f3d9d35f25a10c6dc8c44a7cfd2291f375eb8d3581adf7f36fc5b09218"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-darwin-amd64.tar.gz"
      sha256 "c8720a01af59dd4c6fc42bb5df1bfb7a7b20ce342cb2d09936eca784d1e7636b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-linux-amd64.tar.gz"
        sha256 "e76142bd080e9612b5f367e15991856af4363928691747d8a57e113ffea2d3db"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-linux-386.tar.gz"
        sha256 "cd5b3d8a46c169696ffd3d73a0cba80f82466a5c20834e8262e26a60092d908f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-linux-arm64.tar.gz"
        sha256 "b592817c0174e5aa666fc6a45dd9f8225ae068e75485e8654e0beb239f8a0725"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.0/mocli-dev-v1.10.1-dev.0-linux-arm.tar.gz"
        sha256 "18e40ba7300be4d3030126c108efd7a35e517b8ae17e6271f993b3f4e1fe6d89"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.1-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.1-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.1-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.1-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.1-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.1-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
