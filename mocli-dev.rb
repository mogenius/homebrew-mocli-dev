class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.53"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-darwin-arm64.tar.gz"
      sha256 "c7e8db6ba81a110ca9e165fb8ba5e09c9a56f1d6620bd8b6ce829b0be0b52883"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-darwin-amd64.tar.gz"
      sha256 "e7d7f7784651b1037fbd21f786a9610e34dd36ab8ba9e5e24d47a5c7cb78544b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-linux-amd64.tar.gz"
        sha256 "8bdfb145c60b1c6d35bccc94f60f6118e6454c62448aab1c89522214799b1d3d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-linux-386.tar.gz"
        sha256 "9673072debc695910c7f196df24e1417dabd7ceb9288fb60fdfd549c7ea99d83"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-linux-arm64.tar.gz"
        sha256 "c73cdbc6f93e4914b989871ae5b50528bf158cf45113e44bac041444419491be"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.53/mocli-dev-v1.21.0-dev.53-linux-arm.tar.gz"
        sha256 "9b2224159fad4d0f656a75010b510c24dc61bbe214bc31961064853344ef1a4a"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.53-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.53-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.53-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.53-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.53-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.53-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
