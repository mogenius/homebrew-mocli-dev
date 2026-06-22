class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-darwin-arm64.tar.gz"
      sha256 "6ab36b1028ccb12259aada8a5c6da94467ebf8bccd591a8af61074b82699f352"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-darwin-amd64.tar.gz"
      sha256 "817a006b2a5e4d246405a240cd44126e331a08f28b105e84e902716a055e7426"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-linux-amd64.tar.gz"
        sha256 "85d762a18dc3c31308d9b8cb44b4a0fe846b65b62e63e1d44df693704d46692f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-linux-386.tar.gz"
        sha256 "9e8996f0cd65040465f1c4c854d1dc7770bf1d5dcc10a7fe311ff9900911b277"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-linux-arm64.tar.gz"
        sha256 "d24c55fc1a0406e2364f9fefec71ce18f0025b9d9a85abac991c67e44d18a846"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.0/mocli-dev-v1.12.0-dev.0-linux-arm.tar.gz"
        sha256 "cc739cbb7330247d28a609f882e81f2379e7a879e2382ab460381a8a00750db4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
