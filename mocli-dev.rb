class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-darwin-arm64.tar.gz"
      sha256 "746843b18ce329931dd93dea38f454a8d1b74311b49029cc2d552aed84e24bd7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-darwin-amd64.tar.gz"
      sha256 "3c47b96f4b355c1ee7a7b28c4dd7b23cc279cef99b50b652c5dab8ebebbabeab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-linux-amd64.tar.gz"
        sha256 "3e2728480a392b067c6ef7f2ba5078e0e55e75743befe0e3e071dfd833fd5a0b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-linux-386.tar.gz"
        sha256 "00a702b3eb8e2910ea29b401d0e4671440861b010b350164e1d0a6f94369f616"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-linux-arm64.tar.gz"
        sha256 "f597100a596955827366aab662b9e0566262fce7fea5f803eb1283faaed1461e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.4/mocli-dev-v1.12.0-dev.4-linux-arm.tar.gz"
        sha256 "d5b91474fd54c68af1a39ab4ebd650461f1995015f3c5d5400041bf77410a918"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
