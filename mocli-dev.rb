class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-darwin-arm64.tar.gz"
      sha256 "5bba4fdff2d2d09397dcd9feb49414e454833104f24d71c9956ef58ec623e378"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-darwin-amd64.tar.gz"
      sha256 "2b5c22ef49648abc75c18127389ea3e084bae8f743d4e8287ecdeabd2fc25f13"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-linux-amd64.tar.gz"
        sha256 "298bc179c40c45228f4c29bc822b4d7029d6fffbefe7465c38a5eb7da706531d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-linux-386.tar.gz"
        sha256 "172fd4e87d59e40b0dace392ea34c5ad75a23f532e13f561641724bdbf2f7e30"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-linux-arm64.tar.gz"
        sha256 "75bc8a1eb2cac5c06dba74ebd65259914cc329157ef5d7239040d22a0f218f58"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.7/mocli-dev-v1.10.0-dev.7-linux-arm.tar.gz"
        sha256 "5fb616c506154baf14df26efe8ab0624e022a9714e42ac2e9723373a6aa5f5ed"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.7-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.7-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.7-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.7-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.7-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.7-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
