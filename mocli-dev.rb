class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-darwin-arm64.tar.gz"
      sha256 "ffe453dbc13690216477ece045a660fb1b969e01dce6d945ffc65aa779ef9ed8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-darwin-amd64.tar.gz"
      sha256 "903c5d431f281188908c385abc09881c246a99f625d5486193be9585acbd3493"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-linux-amd64.tar.gz"
        sha256 "83a2d44f6ccd2ab77653b90de3fdc47fdb5fe7b50edc71462728600c536b7281"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-linux-386.tar.gz"
        sha256 "3cd9b0804f6ee549bc0268756b1b5460764e9645840c4cad51ed1549a1274a99"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-linux-arm64.tar.gz"
        sha256 "a478c703fc0b09fde2b9d5cc9fb4f1c13929f1d806e1cd4ba0f83c52f718b038"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.3/mocli-dev-v1.8.0-dev.3-linux-arm.tar.gz"
        sha256 "bfac78a27bfd5648bd8fc4e6be0fe9570a442535bcc190d83b78ca05fdcddca3"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
