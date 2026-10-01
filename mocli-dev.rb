class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.59"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-darwin-arm64.tar.gz"
      sha256 "98c1318009cb34980cf2f653398714b690b979d1f6ce418a01f4158e49545473"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-darwin-amd64.tar.gz"
      sha256 "530f69e145b28adb2860c35a8c1410b112dca562a1a6983259c0a875a918668e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-linux-amd64.tar.gz"
        sha256 "4482dde45f7a48827fc70e11409abbbc0b6296643ebb0844445ced6452e4f5e8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-linux-386.tar.gz"
        sha256 "f50ed8cd8393983222e3d94dde62ff541130bf1596b7079114191f7f206d2708"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-linux-arm64.tar.gz"
        sha256 "bd524bc6663923b41b56df5288e79f9203ec9a2e9538237394da5898f9a8b5f6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.59/mocli-dev-v1.21.0-dev.59-linux-arm.tar.gz"
        sha256 "b21b1704440bb5bcff818249be4795778ab46e8bd9edd9ef5bf8f6fbbabed055"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.59-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.59-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.59-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.59-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.59-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.59-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
