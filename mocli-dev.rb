class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-darwin-arm64.tar.gz"
      sha256 "3c21e36ead899402fae3acc3ed2e99e76bf6025f8bbb2ec5a48bcc32f5351d8c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-darwin-amd64.tar.gz"
      sha256 "f2e2cf87bb83120a9a1654133d08e734e4e991eb6fc120dca8debc1df8e9d5af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-linux-amd64.tar.gz"
        sha256 "87c19c5a7068629ccf0ccdaab2dd5253786ac3966f4f55a23c07438729df8e9f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-linux-386.tar.gz"
        sha256 "e7a5abbf196919d832a3a411e33b3a4c01771098154156a1efe6e5836f332ec0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-linux-arm64.tar.gz"
        sha256 "60fa93388e1352d51a679b42d6e3a5476da9cb23b9c94182658500f627c0b8e5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.4/mocli-dev-v1.14.0-dev.4-linux-arm.tar.gz"
        sha256 "3a3bc202be78d566ab8c75ae4d0b51af5c15b1b202447cd8fd6f8f5c4a692277"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
