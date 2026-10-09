class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.72"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-darwin-arm64.tar.gz"
      sha256 "44e381ea20581ff017f00368dce5820b30e5bc42b52db26d37352de0604f363c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-darwin-amd64.tar.gz"
      sha256 "984de2d3eae11e08ceb9f753047340f20bcba085e7de0c19c2eb7ae1b9bb4339"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-linux-amd64.tar.gz"
        sha256 "2ce7022e55e96c4447c4cf4a57d4a3177d2da22e8951edebf8198e4baae29996"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-linux-386.tar.gz"
        sha256 "34e6c7a95d339328f7e3493f59b90fa53d3560925034b9aa3b840f135c2b3a49"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-linux-arm64.tar.gz"
        sha256 "570f3b453e43969d51c1dabbbef0cdb492fe4e2fcc7b3e007efec61408aa7f26"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.72/mocli-dev-v1.21.0-dev.72-linux-arm.tar.gz"
        sha256 "9e2ec1c30d2bcb9194b7583df2aac755892c595d2ee12764d2753288b6e5ee8c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.72-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.72-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.72-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.72-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.72-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.72-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
