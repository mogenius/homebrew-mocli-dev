class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.15"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-darwin-arm64.tar.gz"
      sha256 "89adb28e5647ae3629862933d46376ec03893cab22f06d317e839835e7ecf334"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-darwin-amd64.tar.gz"
      sha256 "c3a231a89078a6fbbc0577f8703422caa0526df85ff98ea3d75656c2240e2e6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-linux-amd64.tar.gz"
        sha256 "a1a77c6c221ab1a6535843ea89bf956cb2181890dec0cbbffdc21cff03bd9e07"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-linux-386.tar.gz"
        sha256 "4828c55f3f848adeb7cf37b0af76f9ab3e9e88671996c68eaadad4cc14602ca3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-linux-arm64.tar.gz"
        sha256 "ed2af658517a77d62eecee72537ed9b9a9f18dae2b2dc7fb52a0a2ea01470360"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.15/mocli-dev-v1.8.0-dev.15-linux-arm.tar.gz"
        sha256 "8ca12a727cce419f47a41dfc458e3480165c51fbad5df86f809fd5411e48248d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.15-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.15-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.15-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.15-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.15-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.15-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
