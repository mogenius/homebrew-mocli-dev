class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.50"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-darwin-arm64.tar.gz"
      sha256 "fd67270777722e551f2befe04f1a080792ecf4eed73fc90e375345023e2e5658"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-darwin-amd64.tar.gz"
      sha256 "aac15ed0f0bb8957b4018247ec9767411113d61516ea1ad154552555bdd29f66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-linux-amd64.tar.gz"
        sha256 "78eb13337c9a28c2c25193c449983fdc063b2884e20c8d55faad565d9a1e8a73"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-linux-386.tar.gz"
        sha256 "f5696a73727eb538c376fa2ccfd7a747e272a88f51d873f7ac782fbaf9516be7"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-linux-arm64.tar.gz"
        sha256 "00e39d3f9d17aea0b266d3d5c790451d29de7acd5aaa8aa1af32aac8ecf0796c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.50/mocli-dev-v1.16.0-dev.50-linux-arm.tar.gz"
        sha256 "19283798d8cc2afd55d018b91e039cb73e89f0be75de16d3bb8cd6cfd6372da6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.50-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.50-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.50-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.50-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.50-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.50-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
