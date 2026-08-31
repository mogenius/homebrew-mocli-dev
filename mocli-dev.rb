class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.13"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-darwin-arm64.tar.gz"
      sha256 "c13da981a28b83fdf4f9d785770c5f6472465f71b2238b9294cefab52fbef57f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-darwin-amd64.tar.gz"
      sha256 "ccae8fa1448e9cc6040b5b73ca889d1007a92e147d9740eb522b5f635dbb1a1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-linux-amd64.tar.gz"
        sha256 "66acc75b008a79014bff3efc73738d41d0b8bbdf96c5056fd194e2ef1f08922b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-linux-386.tar.gz"
        sha256 "330a10459c33d41763b533602bb6e290bd347464a43ec3170d9a857e31f74b91"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-linux-arm64.tar.gz"
        sha256 "61b9e223ad38798d96757e8f214529a896d82995f8de4da637beffa8d0506f52"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.13/mocli-dev-v1.14.0-dev.13-linux-arm.tar.gz"
        sha256 "cdd43f9fd8d57b20451f48787a3d575788da6236549b2e113919f52ec3c24ee5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.13-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.13-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.13-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.13-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.13-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.13-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
