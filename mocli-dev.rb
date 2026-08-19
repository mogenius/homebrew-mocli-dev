class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-darwin-arm64.tar.gz"
      sha256 "5b46b130810e03f87ae0e75b94753cd61728ffd0083c3d9aae17b8d41c56bc24"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-darwin-amd64.tar.gz"
      sha256 "4985bdcfed88be8929395061967ed368e1f695752f1b481b089f7542feb2203c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-linux-amd64.tar.gz"
        sha256 "56783249076245e6ef59d1efa0430ac3757d12635bca1d2a664c859871b5e36b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-linux-386.tar.gz"
        sha256 "7820ea701227729805657364389d29d01cc8b90692d880df48435e76aace3698"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-linux-arm64.tar.gz"
        sha256 "039351c8391b8c6ac5a2e9deaacb5f0067eac248e8df44fa1be52b9dddbacab5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.5/mocli-dev-v1.14.0-dev.5-linux-arm.tar.gz"
        sha256 "b86f8d3e1ad59d3e71f215a200bca67204fbd2504bdb9bb495e01e7bb1809f68"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
