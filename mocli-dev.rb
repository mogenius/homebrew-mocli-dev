class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.5.3-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-darwin-arm64.tar.gz"
      sha256 "235f792ee5ddbb88a1db506dda90a80f2377db0c050f7146c5239450a7e7bd27"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-darwin-amd64.tar.gz"
      sha256 "3564e169ff8fc8240ab682183ddb2fc1efbcd3eb190c9ccbeabfdd79b03a85ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-linux-amd64.tar.gz"
        sha256 "bfa7f0e52c34ef254d4d931543296be5e6e2c0db8bdeaa7ce46f6f6ca1b1529c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-linux-386.tar.gz"
        sha256 "f263e00af72f1cfd7681208cfa0f94a33711493958c1f9a1afa9561a10ca99ae"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-linux-arm64.tar.gz"
        sha256 "04c377edf139cf47bbc905240d5a5afa37e041f038f3c7786d0f5b2cca93e2cb"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.3-dev/mocli-dev-v1.5.3-dev-linux-arm.tar.gz"
        sha256 "e57bffc8e7109971e70339eca74891fe607446a3a6d028aca87896141d8612bd"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.5.3-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.5.3-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.5.3-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.5.3-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.5.3-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.5.3-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
