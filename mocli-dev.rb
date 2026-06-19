class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.11.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-darwin-arm64.tar.gz"
      sha256 "3b7b91ed83da93514ac469b1bdc65fc529cfb0b49859960544b2e061d6188a24"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-darwin-amd64.tar.gz"
      sha256 "752b408962c38fd3acb4dbcf6d38b0e9f33cac81ba3673d68dc42465cbfcc3ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-linux-amd64.tar.gz"
        sha256 "19bbe0b280278eff701ca83b01b6d9fa40f0c97daf36c41e64f44c4bc4671753"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-linux-386.tar.gz"
        sha256 "b955a26a3b14f7521fe635c729d619bbe640d7ef8c273cdf92290e5ce82eec49"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-linux-arm64.tar.gz"
        sha256 "fec28c4538f6099b27bd73129b0261526b8696ef2d24b2bd6aa173d51d615781"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.4/mocli-dev-v1.11.0-dev.4-linux-arm.tar.gz"
        sha256 "ce6640e572a2231945a7bda1e96c99b6ac27b3ccf46648dcc7e94e96167a8b7e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.11.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.11.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.11.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.11.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.11.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.11.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
