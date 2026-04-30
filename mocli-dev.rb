class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-darwin-arm64.tar.gz"
      sha256 "02a23547523ccf80bde668eaee975e1f374bbcbd2606927e07ef2ead9a13b996"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-darwin-amd64.tar.gz"
      sha256 "c3e4c8e458456b49cf26d3ab20c879c7899b29ccff126954ebaf96e83b709956"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-linux-amd64.tar.gz"
        sha256 "7b81f0fce716748e2c024eb14b2cf8be04e2fe86db5821e917371025fcac93c7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-linux-386.tar.gz"
        sha256 "3b5e7e77c4eb0c80b642c7e2a72df2edebe368b4d526a3bf798e8a4ea178dd46"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-linux-arm64.tar.gz"
        sha256 "d085bfa49339c030f2ce2a36ab2c6ce5282ba996c455f3bbe674a22bd0b497ee"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.3/mocli-dev-v1.10.0-dev.3-linux-arm.tar.gz"
        sha256 "daf35ae759b43edbc5018e6ae9e24e87ce5e04d84a5910a81ac1364db474cf31"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
