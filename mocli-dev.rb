class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-darwin-arm64.tar.gz"
      sha256 "ffb2c21becd245572aca39968e44a8bc108973063ebbc6f66c28f7750ac9c407"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-darwin-amd64.tar.gz"
      sha256 "a604f560e478a8750fc5dddcf6055b33aeaae4864e45c261a8a641139d748381"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-linux-amd64.tar.gz"
        sha256 "b29499eefde9a813c692825817201add6a39938922540d51568c522ff3aacc4f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-linux-386.tar.gz"
        sha256 "53c3cf191663a3ef4ac65f075852dc6cfa4d648ed1f16048855609fb01ad5538"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-linux-arm64.tar.gz"
        sha256 "ddd93349b025e5f842189a9ed15ea5be878461fec1f21f48d4fd6d2febb08c04"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.8/mocli-dev-v1.10.0-dev.8-linux-arm.tar.gz"
        sha256 "16cb9466dea4c1fd88de0f60ece5a3c22abca46ba68f15467afdda0627ba4aba"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
