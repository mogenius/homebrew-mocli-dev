class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.11.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-darwin-arm64.tar.gz"
      sha256 "f35e932b510dc0aa7538c109f4e4afa0bc372890ae06d459b8c8b631e3cb0ac6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-darwin-amd64.tar.gz"
      sha256 "b2edc5e1057da311ad3649443709c261a1c07b684a65cc679aeb07df7bd4b7dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-linux-amd64.tar.gz"
        sha256 "d0bfb005cfcb31872f07c6bed2439778d7b92798d4ef43009caf0cc46c748671"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-linux-386.tar.gz"
        sha256 "0244ec7a5bcda1e687fe21cd27aff260029e611c4a498dd01e0d663e97093485"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-linux-arm64.tar.gz"
        sha256 "29530fc43a91f06869de9875bb6138b32a4e9c3cd743f19827a31b557c7b32ac"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.3/mocli-dev-v1.11.0-dev.3-linux-arm.tar.gz"
        sha256 "a3f50b7af3920cf6048f6b293d25da7789e5ecd92efe29904884822f9e62b658"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.11.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.11.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.11.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.11.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.11.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.11.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
