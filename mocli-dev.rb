class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.3-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-darwin-arm64.tar.gz"
      sha256 "5a974c35b0e646a956ca0e5a1d17010a93b0bbe5af73392a2ef898be85a38749"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-darwin-amd64.tar.gz"
      sha256 "4f0f3bbda305f3968d7cae28279994fae5bb568c92091ad69ce79d68db3dff1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-linux-amd64.tar.gz"
        sha256 "c3f3eb3b6ce0393869bf4d8cf15211d70e27cd22397053d2c78542ef5c586fd6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-linux-386.tar.gz"
        sha256 "f1bb1ffd021b63a139e37e0969c8acda02b9b84270790bd7da181c8cbc6bf675"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-linux-arm64.tar.gz"
        sha256 "c6f47db1d0c94c820ba466a10d170cae44de49e238b89e9570a0fccd147c2334"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.3-dev.0/mocli-dev-v1.8.3-dev.0-linux-arm.tar.gz"
        sha256 "c7aae7866f1109c0ef5f9549ba8518be416ea827d2234c894d167e5475b1afe1"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.3-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.3-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.3-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.3-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.3-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.3-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
