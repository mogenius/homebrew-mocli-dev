class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.5.0-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-darwin-arm64.tar.gz"
      sha256 "8529e45ea2cd1560b909de1129364f7752bd8d187fad1d28e701a2e201ff1725"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-darwin-amd64.tar.gz"
      sha256 "d88505571789533917681f39e56c481bcd51db83bbbb9b68086313758e2e0c7c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-linux-amd64.tar.gz"
        sha256 "df6b71c0fc70ef19fe3824ceed5aa0074200a9d0844cb2c8fe5b394f40e2e3ae"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-linux-386.tar.gz"
        sha256 "353945cc71e27c48652007f8b4342a47205ca3dbab7e9f6800895b4256e942ac"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-linux-arm64.tar.gz"
        sha256 "35d4b5580dc465d7c83c94f032fca7f71dc5b674a7861aaed9bdcb298ce8678f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.0-dev/mocli-dev-v1.5.0-dev-linux-arm.tar.gz"
        sha256 "44083341246dff99150ff597ed4a63ccd0c6d71bff1c57dc780b04d66a4bc880"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.5.0-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.5.0-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.5.0-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.5.0-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.5.0-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.5.0-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
