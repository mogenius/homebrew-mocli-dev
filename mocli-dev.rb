class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.62"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-darwin-arm64.tar.gz"
      sha256 "aa4aa2872be340edf897dea65ed766694b712519e14f40917c69ffb0175e69fc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-darwin-amd64.tar.gz"
      sha256 "dc8944075aac3d2ab277eebef400afb69e45526ec57ac243d53373c717d6f8fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-linux-amd64.tar.gz"
        sha256 "de17691b68d1900b5ae843e868b546fd69d4bdc4d676c66cdc715f120b1c67d8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-linux-386.tar.gz"
        sha256 "da5f6da630a1b6c686ce83813cc8e55f90323f537a729b35d090b221024a4311"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-linux-arm64.tar.gz"
        sha256 "591009101ce1e8c5129ce03307fbcb9b6880997f166712854bc7c951ea3cb662"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.62/mocli-dev-v1.21.0-dev.62-linux-arm.tar.gz"
        sha256 "8180927523099b80f5839bcdd146ab7c63ebb23edec6504799b57090e2684c38"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.62-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.62-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.62-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.62-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.62-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.62-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
