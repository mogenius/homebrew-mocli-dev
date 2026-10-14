class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.81"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-darwin-arm64.tar.gz"
      sha256 "f03b36e9a6656f2af9bc11bd915b945ee24bbd46ead7e1a4205416f786b0c6e4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-darwin-amd64.tar.gz"
      sha256 "458cac1e1c2326536cd96c95acb01cd3e24a8a140f7bdf2a7c70725b26a19ecd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-linux-amd64.tar.gz"
        sha256 "a9e0f4b2f25b0f938273200cec4ca1b7e8fd0862c2d4d1ec9872f030a3aca1e0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-linux-386.tar.gz"
        sha256 "b258acc076c9e6a35a4e64fbb014f663a18e8134d49903fb9664aa8ea1cc93d7"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-linux-arm64.tar.gz"
        sha256 "a0c9eca8d8b7b709950f83a14528637216c8add8191570324073103365131621"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.81/mocli-dev-v1.21.0-dev.81-linux-arm.tar.gz"
        sha256 "df6f18688c0edc22a02c4ab49972c44e6b58166fc32c4dd10881d60546cc581c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.81-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.81-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.81-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.81-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.81-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.81-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
