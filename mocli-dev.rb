class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-darwin-arm64.tar.gz"
      sha256 "0d89c0c73365d18894af32c850f0ca7f72f94731c514521018e87091cca042d6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-darwin-amd64.tar.gz"
      sha256 "96b11c67d7acf58b7f0451dab5928d18e83e3267f72f23634d4741eb4e8d7bc7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-linux-amd64.tar.gz"
        sha256 "aa1d19402aeeefda2169fabb3587875a09bd548a2daa95c3202f702d6412c546"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-linux-386.tar.gz"
        sha256 "63fbba9732012e12dbcb9eb638b31e556708bf5dfa66c9292aba2d9c991beb9b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-linux-arm64.tar.gz"
        sha256 "4480d10e629a92188e6fad7055ba11b18ff531daae4fa00da29e816bddeac02b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.9/mocli-dev-v1.12.0-dev.9-linux-arm.tar.gz"
        sha256 "b95d641bd5847d856b4058c73f8bed7f7495d07fa8ec03ebc7bb0f20a74bc02c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.9-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.9-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.9-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.9-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.9-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.9-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
