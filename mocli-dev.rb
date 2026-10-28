class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.90"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-darwin-arm64.tar.gz"
      sha256 "f6cef8f61d1e751e33b57a6253764e302fe2f78100b91c46166e7fd0bf37d971"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-darwin-amd64.tar.gz"
      sha256 "abf65d122e70c5a131f9f674358d4b1373322465dda48f11ba321e6984aace57"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-linux-amd64.tar.gz"
        sha256 "6b1d76a8942d4c6036a32cd819e2b9226542c92fa56e80ab87b7ec6b09b381a2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-linux-386.tar.gz"
        sha256 "551f7cf8b1bc3255e948be1affeb4fb04c8be371cba3065dfdc2839d8e076a57"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-linux-arm64.tar.gz"
        sha256 "3a49c2ca029b208e6e129113dcc1ea8e8cf5e784297e0525af9c6f1d788a0b00"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.90/mocli-dev-v1.21.0-dev.90-linux-arm.tar.gz"
        sha256 "a58ec100120448227e5dfdfd3e2a1339b35b66d1dcf3ebe1d05bb5f5a0261749"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.90-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.90-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.90-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.90-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.90-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.90-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
