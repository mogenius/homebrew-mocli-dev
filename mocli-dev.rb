class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-darwin-arm64.tar.gz"
      sha256 "a0d9e2b8366ffd08d34ea7d966a7166519d6fe5e662e0c8f41624c161d9f8cf9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-darwin-amd64.tar.gz"
      sha256 "e9c07d1242792c4b467bfdb38a1cfe2243f4b0c67a60cc9906148014e5e55228"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-linux-amd64.tar.gz"
        sha256 "e5c7856c22a6fc1956aea2c4a2c627a0170fa3fc8c05b82c10461f80abe2a8a5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-linux-386.tar.gz"
        sha256 "83319352cdbb47bdb353afa8c3034922dcd2203303b926904270e14069786066"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-linux-arm64.tar.gz"
        sha256 "55825f75c28978fdebc063bb396bea3282e79c30c1b5b184628ba43508d9d55b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.5/mocli-dev-v1.13.0-dev.5-linux-arm.tar.gz"
        sha256 "d8236394db02ec12327dcb65aaf49d6cd6ba6910cbe0695f1c89043cfccb7f6c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
