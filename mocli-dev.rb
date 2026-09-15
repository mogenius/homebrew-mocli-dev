class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.22"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-darwin-arm64.tar.gz"
      sha256 "e784b0e09a29b0c84f29522f91da968f4620170ca7d0370ce3b765b36a9d840a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-darwin-amd64.tar.gz"
      sha256 "0f50fbedb9eeaf0a7844bf990994e22beb43ef75575c35a010d66076a3459048"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-linux-amd64.tar.gz"
        sha256 "983de3c5956f6c3d1350b9f9fe9d23b8bd48fd0ada691dc67cd1302d10893ffd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-linux-386.tar.gz"
        sha256 "43d8e06ef802e2872203a691fd88c353dd9aa2a0b72fe74820790845b9fa629a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-linux-arm64.tar.gz"
        sha256 "9947e36ac17754caac4a9c502ea7fa91c1b51eab22e8d0bf3b2c6ed197da7491"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.22/mocli-dev-v1.14.0-dev.22-linux-arm.tar.gz"
        sha256 "037492895463394dfe25816ec9b3d7d13da366baffbf8b7d7677e0af836bb0ad"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.22-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.22-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.22-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.22-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.22-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.22-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
