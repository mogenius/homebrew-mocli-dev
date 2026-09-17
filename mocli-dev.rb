class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.46"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-darwin-arm64.tar.gz"
      sha256 "6cdf76cd34307b556fd6fd6039bada9c5a2d7d104e8d0b08890659518f6dc345"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-darwin-amd64.tar.gz"
      sha256 "e07ecd5c98edd629178722a140a05aead2a570ffb61e5287e8807c1297809fa5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-linux-amd64.tar.gz"
        sha256 "d6bf473e720c18a116846e8dda29d785088d7f49ff5210c05ac068e1ccb88f08"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-linux-386.tar.gz"
        sha256 "fd053ddb0691e7ce9e2162c738a1bd1c99ca80a6a3037a419af9929b82eeab18"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-linux-arm64.tar.gz"
        sha256 "798fc846fc917d8b9d51ec7b19707250592167ccc4d9fbe814fdbe5f012d2215"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.46/mocli-dev-v1.16.0-dev.46-linux-arm.tar.gz"
        sha256 "c91d5a11143eace7742fff3f11d412c0aa4165ba25360b5a64dceae3f3f22c3b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.46-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.46-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.46-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.46-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.46-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.46-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
