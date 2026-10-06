class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.66"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-darwin-arm64.tar.gz"
      sha256 "6046b5ce94e1fccc501eb3831f02eb6202264ff5b8838b24c0381e6eeae7e3c3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-darwin-amd64.tar.gz"
      sha256 "ec69af7c988fdf824d50e5cc2cca530c1b7bdde40eea294b44e472744f3d3527"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-linux-amd64.tar.gz"
        sha256 "c151b9aab9e258184a0eb20c5a841bc03f3a171c18e8bbf562b455a35a5443d5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-linux-386.tar.gz"
        sha256 "98dd5a56f78d07efcb0b63e9016b192b7fd82b04b38dcfc664366546a9eb1058"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-linux-arm64.tar.gz"
        sha256 "792e4ace6a1a4a418b8346f9c49456e7e096d9cb35e7bb5995f91b0193615909"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.66/mocli-dev-v1.21.0-dev.66-linux-arm.tar.gz"
        sha256 "15388f724be09c81710ae5bf528b30de9fa8a034be3576ef8b9d985c3730d6a6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.66-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.66-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.66-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.66-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.66-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.66-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
