class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.7.7-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-arm64.tar.gz"
      sha256 "1dc6d707deabbd32358ca431477cfd52068c9419d65c3f2baed450fe72a5de68"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-amd64.tar.gz"
      sha256 "3bbff0ddd633ec5c7d239b57f02c7ef43d35e5800222c084fbc69702d2d396af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-amd64.tar.gz"
        sha256 "ce4ef2aba25b74d30c71827ac357c08954183418328850287a8c5569cf05b811"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-386.tar.gz"
        sha256 "b07fb193b28900b85e432e378c5148a62633d4c1832e8c10a0475d8d04baeb34"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm64.tar.gz"
        sha256 "76671728872b9597e04a5bad607354ac38aa11f899931b15bd7fa4008dcb430f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm.tar.gz"
        sha256 "b78d4ba60e13e1c8cda466bfec549a22890a08864387e5084295a40b35e3c9cc"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.7.7-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.7.7-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.7.7-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.7.7-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.7.7-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.7.7-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
