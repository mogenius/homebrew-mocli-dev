class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-darwin-arm64.tar.gz"
      sha256 "0a5edf8b7ec6017358091475a8814d3b48a2b3437c22eece9237534db0f51df8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-darwin-amd64.tar.gz"
      sha256 "cea7fcd4a3789d9a635a4bcd6896b4eeac8ca9bedba383a14e7cdb0c2ed23d65"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-linux-amd64.tar.gz"
        sha256 "29b73d9284e3023d8cec6ff3e2919c85901f07013dab255c4b4f9018e0247b64"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-linux-386.tar.gz"
        sha256 "949542f686cc4215e0826cc82b705f04ae8293824d722ce7d876a60626457779"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-linux-arm64.tar.gz"
        sha256 "6e159d84465bee6a7efc29b0054e3d66113d65f7b84d151d36f3cb8845d22997"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.9/mocli-dev-v1.10.0-dev.9-linux-arm.tar.gz"
        sha256 "896d42692a648c9d928c61113f543eb8ab88a94166596d02c44d818cd6f85f57"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.9-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.9-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.9-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.9-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.9-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.9-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
