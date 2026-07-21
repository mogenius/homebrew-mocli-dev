class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.11"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-darwin-arm64.tar.gz"
      sha256 "8798042a4e0e36cd284660f6139a07b25f3bf70af3ece09bae1caa3c810c2db5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-darwin-amd64.tar.gz"
      sha256 "3fc029c24f2c1f9fe088cdbb99d763ad01dfc6b4f4be859e906d92906e40c5d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-linux-amd64.tar.gz"
        sha256 "a0d418fd1e5afbb1ea0f0dbcc9f025b2e7ada94c9b827289a5bb3c6bd5f3a875"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-linux-386.tar.gz"
        sha256 "bfe551cf3832535541027790d287ea412a893f8626cb42f0db2264542ae08dee"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-linux-arm64.tar.gz"
        sha256 "7a2a40bdba25a4ab57f70c1454a26ccb561a63383b147666ac44c68b78940215"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.11/mocli-dev-v1.12.0-dev.11-linux-arm.tar.gz"
        sha256 "985839628f8248f2b0975171192520d2c93f707e24b83905167a7b5327cb2ddf"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.11-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.11-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.11-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.11-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.11-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.11-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
