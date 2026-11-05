class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "2.1.0-dev.100"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-darwin-arm64.tar.gz"
      sha256 "14e1ad46ed02bb7d726f6623c034a1b1d1b506d3b7403b0d98b44c4ff4df27d1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-darwin-amd64.tar.gz"
      sha256 "1ba833f862578206226566d6206b290425fb79cc0bb16fa21b75fe72f048d8ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-linux-amd64.tar.gz"
        sha256 "818ea5cfc15ae464c30776a5a5d618794e41a4885714f9f2521e44daaabb4ded"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-linux-386.tar.gz"
        sha256 "ab2efe0642902128b03f1ebe8f99edd8152935ce2eeb8eb3726bd35d49727fd8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-linux-arm64.tar.gz"
        sha256 "4202035edb8059da8ce9d286a29732b4475927baafa168ca025b96d43b45e61a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.100/mocli-dev-v2.1.0-dev.100-linux-arm.tar.gz"
        sha256 "5981c2774b1207af79488ea3f3d29629669e3453026890df02436a7360888e35"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v2.1.0-dev.100-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v2.1.0-dev.100-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v2.1.0-dev.100-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v2.1.0-dev.100-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v2.1.0-dev.100-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v2.1.0-dev.100-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
