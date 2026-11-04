class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.98"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-darwin-arm64.tar.gz"
      sha256 "b23f7a51d47df44bec78f9b4cc72c02e3ddfc988b8ec9148776becac9308e63a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-darwin-amd64.tar.gz"
      sha256 "06dc51bed060b212b067adf4f6b1d6cfcce8b6433a2c9a793266851e84a0eb33"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-linux-amd64.tar.gz"
        sha256 "e204a0cbd85d302ed460f2177f417a02ca6b3be41d80ad000a8a0cf166c775ef"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-linux-386.tar.gz"
        sha256 "fc61f03d0e29083f70b17451c8aa05c4094164da7c6588b105f030462b607147"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-linux-arm64.tar.gz"
        sha256 "8b390d9e988309b706f08958ab7d29d64271827f3de6c0e353094e71cf4a9041"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.98/mocli-dev-v1.21.0-dev.98-linux-arm.tar.gz"
        sha256 "c94cacecc04d401d7ad148ab8e85a75bf8f14d7686f83ca6ebc8caf01900ca33"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.98-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.98-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.98-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.98-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.98-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.98-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
