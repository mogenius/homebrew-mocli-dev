class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.94"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-darwin-arm64.tar.gz"
      sha256 "0d803ccc21ca99f67efead4056e0ddb0556264b61b41044207d1db1f2c9c8853"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-darwin-amd64.tar.gz"
      sha256 "3d650b43986809677ec215393926b875b0fab854b81dee84d8fac14fb6fec9d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-linux-amd64.tar.gz"
        sha256 "8dc6da589fdd93088c2f24d14b7c61351e4eef8a263e2c55c249efaa5c1c5cd4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-linux-386.tar.gz"
        sha256 "aaee27a14ef1464b7c06d8e082271ba2252bd625389d5a1fc2e5b7caa71b1b63"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-linux-arm64.tar.gz"
        sha256 "b0f90db7807cf2942df451b46c725af7ece58e0256be4341fcd716933dc1a1f8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.94/mocli-dev-v1.21.0-dev.94-linux-arm.tar.gz"
        sha256 "e234edbe67c00d752e71823c7b64d4babff5634405dafae5de846ca87b1fc7c7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.94-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.94-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.94-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.94-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.94-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.94-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
