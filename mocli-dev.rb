class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-darwin-arm64.tar.gz"
      sha256 "0b28b905c57ff0b77822480454f7b63bbe7174794d1dd4898e1d3a30a9b37b4d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-darwin-amd64.tar.gz"
      sha256 "ed4f16f0f295c9eb71ba3185e3b34864fb6fdeebaf487024e452f1438c1ec07f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-linux-amd64.tar.gz"
        sha256 "65d7e4b4faf97f4bdd5bb42cd85749e053168ba4c199f378a9f9c645ef99e27d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-linux-386.tar.gz"
        sha256 "5da6f6d6be28b96245e78a16c6bbb4aaf25bfa34def4eda7511ae2d74f76a002"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-linux-arm64.tar.gz"
        sha256 "bef91390399eea4935061942c1c98bb3e43bb375a9ab348ed2c71e89ab731744"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.9/mocli-dev-v1.13.0-dev.9-linux-arm.tar.gz"
        sha256 "d2cf01555b67abf9cc3ffec80b562527ee7a7db205c70e6c129d241869be4299"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.9-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.9-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.9-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.9-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.9-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.9-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
