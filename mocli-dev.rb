class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.78"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-darwin-arm64.tar.gz"
      sha256 "959597a55b1e7bd6853f496586965c1c2f911d061a1fddeffcc42b1526443806"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-darwin-amd64.tar.gz"
      sha256 "fa09bd6346b2e947f9573a7aadf844c8cd716f11f5ce2fe02f0ad165707da21a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-linux-amd64.tar.gz"
        sha256 "f11bb03dc7ff9e77a433f9c3cb69f2e9fff49542288b5d8118e47495fab99045"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-linux-386.tar.gz"
        sha256 "51e2cb626212cd7eb2f76c0a4fbb455cb623946db7369596e4f362bf786bbfa0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-linux-arm64.tar.gz"
        sha256 "a1e2317453dba787ab94bbe1c7b84dc50e229aa6ccfca9e5ba2822670c7c502a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.78/mocli-dev-v1.21.0-dev.78-linux-arm.tar.gz"
        sha256 "d819aa6d508e0fe116060c1ae5ba7f7c6e4566899ada18d082d97c580ea6e5fd"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.78-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.78-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.78-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.78-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.78-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.78-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
