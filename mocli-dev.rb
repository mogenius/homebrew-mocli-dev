class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-darwin-arm64.tar.gz"
      sha256 "f98d4b47f8279aa1f5a6b31428bd54f63ded15ae04f49ac2518700847618f46d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-darwin-amd64.tar.gz"
      sha256 "b504283ddd70e430c7783b6b1fbce1cfdcb242e105a167fcf33e02e024a70d98"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-linux-amd64.tar.gz"
        sha256 "4e2d1bee97b6c206a937ae4922ff68a90e384d341661e2550a46e06e43c56c83"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-linux-386.tar.gz"
        sha256 "e22d0fc989a53352fb99f3a2cc61f3c2a07957e12a5b2043f17d5abae18f674b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-linux-arm64.tar.gz"
        sha256 "11634228b15938b02b9c9be6af6d397865f809c5d6f94ce5827929ca269cf49c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.3/mocli-dev-v1.13.0-dev.3-linux-arm.tar.gz"
        sha256 "f93c2a758b1889641a85aa8c20f1726f61f8ee308eab19ae5edce7892602cf0c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
