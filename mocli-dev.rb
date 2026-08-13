class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-darwin-arm64.tar.gz"
      sha256 "7f4b69d44ed14b5d762f9f0ec7868f2f6747ddc2d8916f9541d11b56c7744329"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-darwin-amd64.tar.gz"
      sha256 "13b87dfbb025e052afb96d447b533457d37683ac99c8e07d12608954da2b38d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-linux-amd64.tar.gz"
        sha256 "1d23e50079f214c43efaa68c515e85144a453abe295d011daada0d2ba076acfb"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-linux-386.tar.gz"
        sha256 "5b963ab4af59ced9d0c7cabfb064e40be86f7d67308b1fce291928af80169f5b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-linux-arm64.tar.gz"
        sha256 "46ca31a58a89c81691ca048576b40bcbf2c170df7b68c2c025a59577e48270fe"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.2/mocli-dev-v1.14.0-dev.2-linux-arm.tar.gz"
        sha256 "1eaab014a63a19471322dd8ed8d18df8d16889081c3b5059eaaf66acaf3ce076"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
