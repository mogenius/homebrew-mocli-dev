class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.3-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-darwin-arm64.tar.gz"
      sha256 "31431307f2dc0b10ef24cedd0237cc132d606a44f4c003c3fc9b6258b28a2b3f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-darwin-amd64.tar.gz"
      sha256 "b8d3406a9b4da345b82917485e9473a7f4cfca24d0ab6cb3c800e2d2e40a5ea6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-linux-amd64.tar.gz"
        sha256 "89ffc9fd94525f2e6dc017661e23b36b1feb12db991bab79dd1020384b656714"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-linux-386.tar.gz"
        sha256 "dfb8fc3833381b1a4866b0b932c96a93b1e6c53f764df6f8d0dd47e488aa6275"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-linux-arm64.tar.gz"
        sha256 "3c6aa95223b7b36aebd4b2ae0df98701c61f8259cc2e473e3dda9a3e86119bc3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.3-dev.0/mocli-dev-v1.10.3-dev.0-linux-arm.tar.gz"
        sha256 "d138db4558a30481a5b5e77066c0379fe4fb07198bc15b9e0afcabaddd88e962"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.3-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.3-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.3-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.3-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.3-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.3-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
