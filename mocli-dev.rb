class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-darwin-arm64.tar.gz"
      sha256 "e9330f59378e8d45bcac2cdaf285d1594d6a695bbfa68208af3fcf496fd44961"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-darwin-amd64.tar.gz"
      sha256 "f0eb284739a01d053ebbce34994a1ff0957303d34c4fc7153561099cb2b4d1c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-linux-amd64.tar.gz"
        sha256 "3353c7e0e3f08cdbbc95281a5913a97bd964098290a44150a70a064174d3a0fb"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-linux-386.tar.gz"
        sha256 "7de19d4c9cbc0bba1726f42a841bdaf68c31103824df8dc87a0f131460cffc01"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-linux-arm64.tar.gz"
        sha256 "7b2e69a68e2711264fa983b9e8173bc0f4bbadb82858bb9468edf5cb4e266755"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.4/mocli-dev-v1.8.0-dev.4-linux-arm.tar.gz"
        sha256 "14c7a5980dd24e00be260903ab66e8e2e4a8a5d97607b6cb3b4e5ab303e0dd4d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
