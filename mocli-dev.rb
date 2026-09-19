class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.49"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-darwin-arm64.tar.gz"
      sha256 "9bf4e34a4a23521432300092747f7b9266c82a71cbebeb28c3b2e9239d9fdd6f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-darwin-amd64.tar.gz"
      sha256 "783cbfe06cd626e8a818b2170595e2417fd003026f8e70325cd7a0e3d379a57c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-linux-amd64.tar.gz"
        sha256 "e7c072c2081524f92fbcaf5e630ed1771f743d8f161c1115f27c5629ecf5427a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-linux-386.tar.gz"
        sha256 "1e39cf340f3c8226288688c88cb6b93fcaf503d1511766f27c0d1425485d62d4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-linux-arm64.tar.gz"
        sha256 "2a736bcf50c07f4a22564ad60a8ca21b28e26e5656168c8f207772d9e63dfa6b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.49/mocli-dev-v1.16.0-dev.49-linux-arm.tar.gz"
        sha256 "b9960b5036a0b1f64faa5189846b8e2bbe5bde0b62f9c05e854d2b41fad278df"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.49-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.49-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.49-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.49-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.49-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.49-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
