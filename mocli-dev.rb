class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.17"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-darwin-arm64.tar.gz"
      sha256 "e9fe7b516a153d953342888fa98a1fe34158c7fc755827d26aafae155d29a7c4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-darwin-amd64.tar.gz"
      sha256 "119e20d5cebc2b846a63e0d1e7eed898dbea98634e34c3fbe4eb362a10e094c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-linux-amd64.tar.gz"
        sha256 "db3f438d1063b74081a9318cace678f09f0bcc88aee86d14f56540d13ac4ca4a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-linux-386.tar.gz"
        sha256 "631c2e5b8f7d8eb1274459bdab4040b215a43f1f4f4796116331982e08235b84"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-linux-arm64.tar.gz"
        sha256 "6b83ec2847e5e51d0a1b7ff1fa83f42e38655ede7214928c711f4925ac26444d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.17/mocli-dev-v1.14.0-dev.17-linux-arm.tar.gz"
        sha256 "989142e0e22fa1e08fea9ac3ccc6219c8a00e404397b474fd6a09ce073df23b4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.17-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.17-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.17-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.17-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.17-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.17-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
