class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-darwin-arm64.tar.gz"
      sha256 "0ea099e92aa0d5506a60eb216559fa00016c593bf343926f95369768335ca1ed"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-darwin-amd64.tar.gz"
      sha256 "62b80158692c49922a85630aad3de3d78ccca81a3f743287d4978159c82407f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-linux-amd64.tar.gz"
        sha256 "4b947ec12b913f03538da166957bd4a3df268d28f43f37475e9fd997229a0369"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-linux-386.tar.gz"
        sha256 "58c49f0d24aaf92208983f6185bc934182bfb4ccb9602a9305c8fa0071dee868"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-linux-arm64.tar.gz"
        sha256 "d88a90d19c5a6ed5350a79fb78e0f48a44e47afe5107fbec915a05fd60e80fe3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.2/mocli-dev-v1.10.0-dev.2-linux-arm.tar.gz"
        sha256 "299c33e848bb9f05324b09c344d0b6a129b37bd06f831a892923d2f32b02a6ac"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
