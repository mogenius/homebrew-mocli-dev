class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-darwin-arm64.tar.gz"
      sha256 "0ed001935aaf772af14918c880504760a78077b2a1c5bab269195469096c517b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-darwin-amd64.tar.gz"
      sha256 "421c4ad4fd314e98c5173f372a882859ef9755fe710afff9073c1e3de18f8e0d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-linux-amd64.tar.gz"
        sha256 "bc2c2a73cad21832ab4f273aef665595eb556b634d51e93fc003ecd77f762b14"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-linux-386.tar.gz"
        sha256 "e43b7248d925ccae4d8084d7c501797f07f6d3bf4fc971e6acc92b6de95c6677"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-linux-arm64.tar.gz"
        sha256 "e65598d27d35ccb5fb77c03df1f01b19c1811aadf3335922a021dbbafd44a40c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.7/mocli-dev-v1.13.0-dev.7-linux-arm.tar.gz"
        sha256 "f218501cd9c84abb3134bae192bb1782ec93b393173d7e971ccc971611d50f18"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.7-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.7-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.7-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.7-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.7-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.7-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
