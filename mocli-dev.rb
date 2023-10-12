class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.4.0-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-darwin-arm64.tar.gz"
      sha256 "a49d3102f2c129d7f829d9d20e4e99428a69257861610f5eb1d36bb8ac0f75c9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-darwin-amd64.tar.gz"
      sha256 "e45bb03be9da53081ca69c8cd1ad98fb0f5dcc60427db030ea9d0b155fa9f9fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-linux-amd64.tar.gz"
        sha256 "caff0ca3d942959af611584b18046e42b37b3ec9cdd2773ce4a89a95fe2eb8cf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-linux-386.tar.gz"
        sha256 "1b6958e97cef8c3cbe0f18a9904dad70f82dd515d461d8a94ea5b0fc0ecc1f99"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-linux-arm64.tar.gz"
        sha256 "7fbac413c7a2ee9b8432d908624f4cf52f3e78cffa6ee9c8b1c32856a2f8600e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.0-dev/mocli-dev-v1.4.0-dev-linux-arm.tar.gz"
        sha256 "a05bc41282050c529075222dfcf23ccf97ba3c48ec46a637267bdbc54051d962"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.4.0-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.4.0-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.4.0-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.4.0-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.4.0-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.4.0-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
