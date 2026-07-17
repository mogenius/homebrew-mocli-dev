class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.10"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-darwin-arm64.tar.gz"
      sha256 "3a2960c3e85c5e5d797588a2cb0a988cc543097122ef44ea025525b9ae2e4d35"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-darwin-amd64.tar.gz"
      sha256 "cc3a242930683998e04d7f7dc36d2a99acbe0aed21b693a74c6b0895d6cdb34a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-linux-amd64.tar.gz"
        sha256 "47a8ba214df5a2e0a685ed7dad00c2f292e702a71d47a7afdd31707111242392"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-linux-386.tar.gz"
        sha256 "ce1a8fbcf5a9676a8b7d44cedf29b1446951f452e6d174758eab83d4cd811c8d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-linux-arm64.tar.gz"
        sha256 "47c87d9ce51a835a858618e45898aea181faf9b4dd471224426457b0e35d66b1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.10/mocli-dev-v1.12.0-dev.10-linux-arm.tar.gz"
        sha256 "d3c44cc21806f34fae2ab91df1a0ec97968b372ec8f4c94bc71f661da5fb12fc"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.10-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.10-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.10-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.10-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.10-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.10-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
