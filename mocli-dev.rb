class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-darwin-arm64.tar.gz"
      sha256 "b432ae9bd5b8a28b4faef3a413fb1c0e586bc7a3a4f6bc09b419b688364a2318"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-darwin-amd64.tar.gz"
      sha256 "544f003afc81b5b09daf2d694970989bb36ed1d687555edc7de2fbea6a242c28"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-linux-amd64.tar.gz"
        sha256 "de566052956be101a0164f38830a1be68a7ad1c70b2da1c72981f2a9fbfb1ac7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-linux-386.tar.gz"
        sha256 "999f40115d29eeff4b372e0e5912ce434e4f32a7e3e5d4467c1202c3ffee64a1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-linux-arm64.tar.gz"
        sha256 "e4f4f48e3f79983a85174b03f885f0f0dd161b531a155a92e6ef456e7560cea8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.4/mocli-dev-v1.10.0-dev.4-linux-arm.tar.gz"
        sha256 "666b96297c7aff326ad508db4fbc4d2cc16dab729ef6d85bbe3429f9baa2b704"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
