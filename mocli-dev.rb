class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.51"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-darwin-arm64.tar.gz"
      sha256 "09d9d73cda30f29ed58a20fa7da924c80b6a4ab405bf5f650cc8b579c066116d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-darwin-amd64.tar.gz"
      sha256 "e56dfd93e4f63bcc5b80b6d76c852c6dbf7180740a8f044952da46570d782151"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-linux-amd64.tar.gz"
        sha256 "ecda675d25c6387edc12481bf647e4e7c83da0e810da9194deec316e15a5ee88"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-linux-386.tar.gz"
        sha256 "939fe1631a23a3fc5b40e8b0bde9d0f5679a54f52a8336045ec58790af34bd6c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-linux-arm64.tar.gz"
        sha256 "c6ef67d9f69dda323354a7a858e1a5e2760817822b1eceaaafef42ef206ff9c3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.51/mocli-dev-v1.16.0-dev.51-linux-arm.tar.gz"
        sha256 "f25ac8e2727d326e39687764e0342713c76b89de8d2d0680929e1c5013c213e5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.51-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.51-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.51-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.51-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.51-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.51-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
