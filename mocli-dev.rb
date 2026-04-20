class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.12"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-darwin-arm64.tar.gz"
      sha256 "3cf340c9431d918164fd8beec6c19d80bf87cec6f73a54b97c63086e3587f3ad"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-darwin-amd64.tar.gz"
      sha256 "93886d23e0e5399ce4f7784d6f8a6d21750236c7b5f8a38f87c90250896128af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-linux-amd64.tar.gz"
        sha256 "9ef1f1cf66d18e65a796766e4f0cce870ab41157f54bb129d1b8cb6833c58f71"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-linux-386.tar.gz"
        sha256 "d3ffa629e5c599d25a603e5417b988afa9430778c6b86357b481b2f74fd9f67e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-linux-arm64.tar.gz"
        sha256 "e64c34513d928296bca2abcad5db62216dbcde996a8f510a949b28fad53373f4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.12/mocli-dev-v1.9.0-dev.12-linux-arm.tar.gz"
        sha256 "5c2c666b31506d5dac9e193b2ba874489ad2766bb8d949a83dd5834ee57a330d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.12-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.12-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.12-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.12-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.12-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.12-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
