class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.3.10-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-darwin-arm64.tar.gz"
      sha256 "c9b3ce7a2a01f7f9de1ab5a5fccf46da1c4c6b6bd11e095113cf8f9b5301420a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-darwin-amd64.tar.gz"
      sha256 "921e5fd9530d444ea52663198f9017c16f7ab2fd387fd5a28288c98bb300ef9f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-linux-amd64.tar.gz"
        sha256 "fd3dbe44b3d25c75bf58f92a8243b84ad2b8f006b4694bda18955e7ed035bc13"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-linux-386.tar.gz"
        sha256 "6189ec2ccd3b3380dcb8ad7c1c349f4a050f3841c3de10fe1cd0f92c4be33a02"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-linux-arm64.tar.gz"
        sha256 "5ca2aa41fa855d6a760bf8af58f462ddd3cc89ddb4a5f392af9b38ee054df2b4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.3.10-dev/mocli-dev-v1.3.10-dev-linux-arm.tar.gz"
        sha256 "c92af01c88a79690ca50c50d42701d41b025d80c4c02d3a5ef99cea982f9d6f7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.3.10-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.3.10-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.3.10-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.3.10-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.3.10-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.3.10-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
