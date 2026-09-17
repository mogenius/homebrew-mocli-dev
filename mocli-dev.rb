class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.41"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-darwin-arm64.tar.gz"
      sha256 "000640f4251690bd6beb6f6d8b097c302780457288e1e2cf50c384b9322a9199"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-darwin-amd64.tar.gz"
      sha256 "2a2452b2d053c9064c7e3c0c412cc9d614a2b9729885f01683533f0f43e23f48"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-linux-amd64.tar.gz"
        sha256 "a17c09dca0b00639adcde4ad7cc8bd5196047926eac50a23d788c57d76eda012"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-linux-386.tar.gz"
        sha256 "a2ea164e602f8a903ebf45eecdecb34bf545d1915c48241bf6ad7c9a18ee52ca"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-linux-arm64.tar.gz"
        sha256 "892bfb2cda9109b65780486078d542b18497b916f972381595185022c9e42c51"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.41/mocli-dev-v1.16.0-dev.41-linux-arm.tar.gz"
        sha256 "ada36259843809fa5126b9caad44a8238b7377ed1d2e021d32b87218cffd9598"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.41-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.41-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.41-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.41-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.41-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.41-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
