class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.26"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-darwin-arm64.tar.gz"
      sha256 "62494f9e37338815656d26967aca912f88d4abab4156bbeb71a708d600a115b8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-darwin-amd64.tar.gz"
      sha256 "70e3d8adb4eb97c7889d962b29457ddf680ecaf529f6be01954d7e7957f8dfcf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-linux-amd64.tar.gz"
        sha256 "507a6214396aa21b2e60796a707018ca9c37e0f6897d1b643de2c60d90c23798"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-linux-386.tar.gz"
        sha256 "29d461c00151d047bae9166cf6990b1cb8a8b0b3342dfd1d52c3647ea10ed6b1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-linux-arm64.tar.gz"
        sha256 "5ece53ebb8c8dce1b43adf1eeb3fb9d6420a4860d73716278a1e2dd12520d3cd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.26/mocli-dev-v1.15.0-dev.26-linux-arm.tar.gz"
        sha256 "df669a618c614ab4a6b060204c70c148f8cf4254f43c462f0518147ce24599e7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.26-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.26-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.26-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.26-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.26-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.26-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
