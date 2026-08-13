class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-darwin-arm64.tar.gz"
      sha256 "df914f95dfa7fc55396d0df265a465ef4377a0c57dd2f326d1bc6c66cc171cbe"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-darwin-amd64.tar.gz"
      sha256 "0d2e643326014164980d9d3aacf6ad40ae03886232fa85e14d507e6d165e7f10"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-linux-amd64.tar.gz"
        sha256 "aa927b481732edbb4d1f412239034d1a89a91f335db8b08469bc18b652497008"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-linux-386.tar.gz"
        sha256 "6d80aae10f4d39eb37f1a1e632240adfd934b66bcc00b48181284220e3859f56"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-linux-arm64.tar.gz"
        sha256 "c0d584f10e003cd911176867959449e846cf20b65638818fe1db13ba5c983c79"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.8/mocli-dev-v1.13.0-dev.8-linux-arm.tar.gz"
        sha256 "a5d99548e1ea2ef70c462ca23813718ffaad330355ed5e820da42e6a451701b7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
