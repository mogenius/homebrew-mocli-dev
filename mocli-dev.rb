class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.85"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-darwin-arm64.tar.gz"
      sha256 "a1289700bc919f4afbd8c8f4057604bd427bf8b3b46d7167501fbabc65f0411a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-darwin-amd64.tar.gz"
      sha256 "cb82097c52bc81e2e4c2a13e034c77be8e4b983ec3df88c215759406e417399c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-linux-amd64.tar.gz"
        sha256 "fe9d4c54602776aea58237a1e9bbda98c324f13005490f88b8acff12e434b649"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-linux-386.tar.gz"
        sha256 "d0d8d15d573fb2d5abad118dc83321bb733b7b17a5e5c3a7ec0fa8176573769b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-linux-arm64.tar.gz"
        sha256 "4ecb2c029e99fcd1fc0f9b93a7b9a4fb7108832f72eccf9f51fc834eeed6bfcd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.85/mocli-dev-v1.21.0-dev.85-linux-arm.tar.gz"
        sha256 "c5cc9a10c4eb54f0ddc02c61d47711e47f357d89317c3b3e68a1aea3308d8ded"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.85-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.85-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.85-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.85-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.85-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.85-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
