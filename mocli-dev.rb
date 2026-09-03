class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.16"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-darwin-arm64.tar.gz"
      sha256 "8b04313b00ca16ea12a1a1e30e3814c0b1665aaf136ce555effc2eedad603abd"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-darwin-amd64.tar.gz"
      sha256 "d7bdfe7016bbceabe210c724bb37cc31c85638a4177bc8671de291fdbae2072f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-linux-amd64.tar.gz"
        sha256 "e5ffc9f7b4f000f42e50b6b280bab67d3eee9771c5d031267c2abfc7e0b84dc6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-linux-386.tar.gz"
        sha256 "e66c59e1f6c61714b7ce2a3cbaa75df808a80e0b5c73d5a238e34d5ad552108f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-linux-arm64.tar.gz"
        sha256 "6a06386b0dc964eec055801bfb90140d29da7cb0b679d9e538331cb5cc1992ef"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.16/mocli-dev-v1.14.0-dev.16-linux-arm.tar.gz"
        sha256 "b9c5aa9134f3be8eb933b2680d9170209e169bcde1e6ecfbc87ba21936d028e9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.16-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.16-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.16-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.16-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.16-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.16-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
