class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.29"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-darwin-arm64.tar.gz"
      sha256 "971b2ccddd679bbc2624162cdcb934ececddec9ef26740871566f5725a9f3c57"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-darwin-amd64.tar.gz"
      sha256 "e6c91d4f30358db0e8fcb2bc9918fab87fa9e7089777e67f13c93bc589edadee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-linux-amd64.tar.gz"
        sha256 "f533811cdd29149ff487eb6181ba8d06d4105a038e51bb38e40f3bf4dd1b7b26"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-linux-386.tar.gz"
        sha256 "390a7fa207a190daede8caa10832fce5830132fd613359ce4ac8d3cce1aa69d0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-linux-arm64.tar.gz"
        sha256 "46caa735fc8881050aabcf16d5de7aa7b07759656f5674777059137516d9484e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.29/mocli-dev-v1.15.0-dev.29-linux-arm.tar.gz"
        sha256 "1be679151ff7bfce216f5eb679f1e2c7b0908731c4fbb4a5304bcac3cc0e2c56"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.29-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.29-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.29-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.29-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.29-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.29-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
