class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.6.4-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-darwin-arm64.tar.gz"
      sha256 "10eb2e427480dae6042a02c2a98cb7537402442cb0750245189b062544d8ec97"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-darwin-amd64.tar.gz"
      sha256 "10a56d636dd6001c2445ad3152c03009642f026b1d36641bf247d628328fa8f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-linux-amd64.tar.gz"
        sha256 "6fae028b6082148c3c44e9baf9d529b7906d20b966b51697e456970f08d3b95b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-linux-386.tar.gz"
        sha256 "c183361dc0498cf79fac81c3328646ffb3213b995a220af118d47be4818d48ce"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-linux-arm64.tar.gz"
        sha256 "f2a0972358de43a936a1ac3d988df432953fd6323f3ee96291761b63af14ab9a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.6.4-dev/mocli-dev-v1.6.4-dev-linux-arm.tar.gz"
        sha256 "471317d35e279bebe2e9f93531212b2fa07686f15d9ed12125397334e1a0602b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.6.4-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.6.4-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.6.4-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.6.4-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.6.4-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.6.4-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
