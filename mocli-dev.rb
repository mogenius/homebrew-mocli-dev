class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.2-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-darwin-arm64.tar.gz"
      sha256 "0417dc77ad51f8392cbcf937d26495b090fb182762228c919877b143e9cc7509"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-darwin-amd64.tar.gz"
      sha256 "9d89753d58d193a37c15a96824fa008c4ec7b65ed503a79b28bd91e7eb6bcf58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-linux-amd64.tar.gz"
        sha256 "83fb8c24aa1c1e07345e4a53b62190216cf1dfff48d5e4ae939bdbbe16852802"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-linux-386.tar.gz"
        sha256 "f4e9da6f20e465e29ba9c1abbb5cdd4694ae5becb2ce9f4ed02a7338bd64a81d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-linux-arm64.tar.gz"
        sha256 "44c875d13e17ebbf60a7345ee18093481da6e4329f4607785f5e38ec3d4c7518"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.8/mocli-dev-v1.8.2-dev.8-linux-arm.tar.gz"
        sha256 "7c33ff5271e550476ef258075d30b00e26c2f6411c1f2af4d6a842e6990eb80b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.2-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.2-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.2-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.2-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.2-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.2-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
