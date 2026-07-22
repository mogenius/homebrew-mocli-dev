class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-darwin-arm64.tar.gz"
      sha256 "85773a9cf3ebb65ee4a5fcc4cd5e67f1b7c5fd6bfda45bcce6beba65afb0ccab"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-darwin-amd64.tar.gz"
      sha256 "dc92d2508179d1d89d42d806800636a5ee46df31812d9ded28bbbc88c435a5c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-linux-amd64.tar.gz"
        sha256 "54800f4bd53e71419692821caa15d595eb5ba4694960b75f9283e9d5e391032b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-linux-386.tar.gz"
        sha256 "26c416e5498577e4d57f417a33375cd2fbbf6e46c53b5d3c795b3b69660f76c5"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-linux-arm64.tar.gz"
        sha256 "38e68e90bc83ef7ec053e6300ad0820d4cf2bca367b8be5ad9c0f4e9ea3f579a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.2/mocli-dev-v1.13.0-dev.2-linux-arm.tar.gz"
        sha256 "160a2e8b82edaecd0f9d0abb3b5878166a2efd4c6cf6874fa4febe993b8ac236"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
