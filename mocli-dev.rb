class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.84"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-darwin-arm64.tar.gz"
      sha256 "d5e3fda0f83c49978984be584f6cda09ca17e425edeeee3b1b78ae315cb71f51"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-darwin-amd64.tar.gz"
      sha256 "05e224364eee645682629044861f04299aafba09511347fde385061ad5b3a3d1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-linux-amd64.tar.gz"
        sha256 "340ed3a553a2fa2b509c626d1ba84fa053c59e72f3c2f3e6679b74d071dac472"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-linux-386.tar.gz"
        sha256 "1c4d777c5ba819d0912c6ed81c687e9714f501447caa465673641f286b9a7c5b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-linux-arm64.tar.gz"
        sha256 "91ad31312f8e986cf4f2282da7691c1f7b70f0f3cc52ab95e693f1a3f046dbb0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.84/mocli-dev-v1.21.0-dev.84-linux-arm.tar.gz"
        sha256 "26ab8649f16ae70c751cef154359bf4f2d149dc492dc24adda95bf685f376ade"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.84-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.84-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.84-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.84-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.84-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.84-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
