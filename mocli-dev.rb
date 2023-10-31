class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.5-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-darwin-arm64.tar.gz"
      sha256 "8e44124933e587670fe42a9537a564f81b57001444858d33f14f6aa9737be1c5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-darwin-amd64.tar.gz"
      sha256 "36f2aff136821ad790dd9d06ec605847bff94807762dcae1a4b01ab8c8ed2b76"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-linux-amd64.tar.gz"
        sha256 "592606de8a5a91ebee49650c642767df753e785de63e773f069262801af8169b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-linux-386.tar.gz"
        sha256 "91ffab82531fdccb9a84219e2ed0092324609b8541f961a2cd0aabb7befacccb"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-linux-arm64.tar.gz"
        sha256 "768120e2e868ef9fba615895776d6bd70bbae247d1caa551f973cc429982881a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.5-dev/mocli-dev-v1.6.5-dev-linux-arm.tar.gz"
        sha256 "46e7ae5a9abef9d476417d83fa47f5d9fdb1dd168b5dc3aff84d689ce0004c88"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.5-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.5-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.5-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.5-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.5-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.5-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
