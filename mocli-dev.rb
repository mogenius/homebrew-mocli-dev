class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-darwin-arm64.tar.gz"
      sha256 "d204ffbb1fc5ac8afb8e23a80a86236938d1405ad23fae04ec3edf92133f33e2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-darwin-amd64.tar.gz"
      sha256 "a55b5f73197112eb5a714db872a66e27fa0994cc75fa4335d85aa0487233c382"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-linux-amd64.tar.gz"
        sha256 "22d0170c40a2cc2c704125ee270ee9ac004a37a20d41bcc98192d1a60a3a59fe"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-linux-386.tar.gz"
        sha256 "b231bdf2a074dd813194ea406f15be0d94578a5c1d5d4ec932a72f1b0e5194fe"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-linux-arm64.tar.gz"
        sha256 "f5c4c2220b2b64c19aca4062d41380b65cfd49366053c82e8e96975c89aab0dd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.9/mocli-dev-v1.8.0-dev.9-linux-arm.tar.gz"
        sha256 "0615701b9176bdcbb9d0bb96811a643cdab2cf462d21541866cf453974650ba6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.9-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.9-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.9-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.9-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.9-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.9-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
