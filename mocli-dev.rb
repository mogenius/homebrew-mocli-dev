class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.4.1-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-darwin-arm64.tar.gz"
      sha256 "0a5752bbf1718156b0c70ca3d89b4c1c0ea96921caf06f9329f80afcc742af3d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-darwin-amd64.tar.gz"
      sha256 "8781ccfdfad8409b5ac8c86ab10e4475dd3db23f3a3ee014959b67da20a969f5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-linux-amd64.tar.gz"
        sha256 "fc50fd48858da5ce85ef0dd072de25e5e246625c107eff98b272267abdab5716"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-linux-386.tar.gz"
        sha256 "2fae5d594b783b4f053b2dabbd92e2d60372deef7e7ebd607847a987ee6dc376"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-linux-arm64.tar.gz"
        sha256 "7fa2042f57a522caa3224a0333bc7e24cb122cbff73d444d7453f22f418b9f2a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.4.1-dev/mocli-dev-v1.4.1-dev-linux-arm.tar.gz"
        sha256 "85e00b04a158d417930ba5d84f4fae9d19f92d52540651a97bed167f89018bea"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.4.1-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.4.1-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.4.1-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.4.1-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.4.1-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.4.1-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
