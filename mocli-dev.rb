class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.5.2-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-darwin-arm64.tar.gz"
      sha256 "e4f8101c7e2d25bb0997e0072d613a9d5b788d1c338339c5758721caece2cce4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-darwin-amd64.tar.gz"
      sha256 "34dab76da7ff54be001e8831331903310c10156827f4a1e5071f84958912c2a5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-linux-amd64.tar.gz"
        sha256 "67e75badada90a24ea2d44f174414715468a9edfc78dabc858e3d75f1006bbe0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-linux-386.tar.gz"
        sha256 "659c7fb622a2d5f0929b0627baa94beae2ddbe67e1bd8768d455fc827411b3ae"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-linux-arm64.tar.gz"
        sha256 "c45123b8b583ed7fddaeeea63f7f8724cc78d5cf4aa75a3f9ec0aac9257a5075"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.5.2-dev/mocli-dev-v1.5.2-dev-linux-arm.tar.gz"
        sha256 "d9d42215c11ccdb28aafb3291a0eaafe05c031bed5b0c2d38da0542a7de1a5c0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.5.2-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.5.2-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.5.2-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.5.2-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.5.2-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.5.2-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
