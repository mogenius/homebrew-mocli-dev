class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.4-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-darwin-arm64.tar.gz"
      sha256 "11d7c5cab50c717aa58f2f36aaa0ba2c973f03196a300cca521347b5dc6817c1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-darwin-amd64.tar.gz"
      sha256 "a69b84ec93e1de772a4f035b554aa2492561a4b7a2c52929bcc09eab138f95ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-linux-amd64.tar.gz"
        sha256 "c50e2f251d7878dbf55168c6e84b635c1575029a7a84c668035e876e3ae591aa"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-linux-386.tar.gz"
        sha256 "275ff5aca44f615a226c2c60e8d0a0e508855caede57374452e7100063b22ce3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-linux-arm64.tar.gz"
        sha256 "17ce997121867db29a0ad36a02bfac1cc030b9915bd28047c79e3ab93566e676"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.2/mocli-dev-v1.8.4-dev.2-linux-arm.tar.gz"
        sha256 "fffcd405abcea73fb44bc4a4acc0ed8680abc99f7c8bca1c374c1998e8d7e81f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.4-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.4-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.4-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.4-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.4-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.4-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
