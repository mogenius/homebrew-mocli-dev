class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.37"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-darwin-arm64.tar.gz"
      sha256 "9d175a27238656a58db2eaec3bb44b514fb9ad058ff0da19b800e9cdbe209035"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-darwin-amd64.tar.gz"
      sha256 "0393d370f280635b1b64eeec1c179125d6600a855ea0ab7d077b86737972f9ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-linux-amd64.tar.gz"
        sha256 "932f7629baca81e09e93057f90d4fc5a829dd0aea9af438fbf3d00b736e4c3a1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-linux-386.tar.gz"
        sha256 "a08de3c61e3e8d5adcad025faac327e32c0af7d8fa09856e3d3d376ac6265bb9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-linux-arm64.tar.gz"
        sha256 "f815c17864be56f0c87cb522543754e1cd413c5c44fdb2bc025b03236e186d45"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.37/mocli-dev-v1.15.0-dev.37-linux-arm.tar.gz"
        sha256 "3614ec6b87c25be83c7885a015dea1ab0abf87eb3cc309f5f5fc43ee6d677e97"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.37-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.37-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.37-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.37-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.37-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.37-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
