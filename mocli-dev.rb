class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.55"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-darwin-arm64.tar.gz"
      sha256 "8459528cb44ce821448113b50dfa6f322deb94cea1a109bde153f0e1ec555f0c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-darwin-amd64.tar.gz"
      sha256 "bc474a3b4c0d3b5ddd6ba46ae6351582bc05c4e891c53df46c0f1581a90173e5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-linux-amd64.tar.gz"
        sha256 "c9b9abfcf5078484c83c5b852817f5ebeefbe311bb07d470fa557f72ffe71b26"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-linux-386.tar.gz"
        sha256 "7ad6750dc47f1a0cae16249cbeab9be2206474d3f281355afbb6c71d1244e1ad"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-linux-arm64.tar.gz"
        sha256 "e2d6674b8cfc75bbab71ccf3ff6e53f2dc66f9ac5bbee50c11302ac89ff9096e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.55/mocli-dev-v1.21.0-dev.55-linux-arm.tar.gz"
        sha256 "0433ab30e7adbb17e775e13ebaa854486f7fef6a73e844b346e64d7f7e54dcab"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.55-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.55-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.55-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.55-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.55-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.55-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
