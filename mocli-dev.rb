class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.82"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-darwin-arm64.tar.gz"
      sha256 "e7a63c2929ca57befc601bb5ccebc472b62148fdc1ab47f6f7fc6e81f1c5c083"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-darwin-amd64.tar.gz"
      sha256 "6d3325d88ce6fdf0dc01c100889fe3f1c46be5831466f3906a630767c5b774ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-linux-amd64.tar.gz"
        sha256 "839895f957ea794988f6a61d543752540a446d7ee41c6c4712e250ba28d9330f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-linux-386.tar.gz"
        sha256 "13677248f88428006341d54df7ba893e3a3455055876f7cb5005975196dee292"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-linux-arm64.tar.gz"
        sha256 "09853c5597547ec9af6fb664c8b6898cc7d164d685d6915f1df77d0d8e778af8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.82/mocli-dev-v1.21.0-dev.82-linux-arm.tar.gz"
        sha256 "73a085f01b39e57df48d7c71a893354bba2033d4ce678737df0cec56ceb4dab3"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.82-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.82-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.82-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.82-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.82-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.82-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
