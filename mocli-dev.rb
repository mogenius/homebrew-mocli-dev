class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.117"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-darwin-arm64.tar.gz"
      sha256 "cd4430468cbe19e2df10228169932cf9512228c03de6b5bab7b6c577faa4fa3f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-darwin-amd64.tar.gz"
      sha256 "b8ffd46120155eec584c64e1cb556067172f153e0c4630ae9b5f7aa37684441a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-linux-amd64.tar.gz"
        sha256 "8c288454f8cde4c1a03def10ebbf61a01676f8e607d3a16093ff332ee18ae9b2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-linux-386.tar.gz"
        sha256 "e64a0775fa3b75ecaf3eea19b9d273e29b83f9a02b109837991a2ca783bf9088"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-linux-arm64.tar.gz"
        sha256 "733b0d374039bc6005aef6ff9444aff42bc7de2a23d4e88d15151c31bb63be95"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.117/mocli-dev-v3.1.0-dev.117-linux-arm.tar.gz"
        sha256 "a8caf167eedac68dfc64e331e0813f9f1cdeb0b3cbb8d627b554e405bbff0d35"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.117-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.117-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.117-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.117-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.117-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.117-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
