class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.45"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-darwin-arm64.tar.gz"
      sha256 "0a378ae98f36b91a1aa3ea35d0f31ef8df1715e7e0c943bfa805fe42c69f68af"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-darwin-amd64.tar.gz"
      sha256 "64a597c7c19f3721b47eba3d29218f6c6b110291e6bfc0d2732b32ec79015801"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-linux-amd64.tar.gz"
        sha256 "c210f7eca4e2946342aaa82a6b241959a1d8edfb8d8fdfa655de1d36fa35bc8d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-linux-386.tar.gz"
        sha256 "746b1c00cd86b957b036c2012f25d077967169585f00c78f3546fea3bad82e89"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-linux-arm64.tar.gz"
        sha256 "cfc398f3f826beca650d7054957c5f6f3fb4dc7e1b5c766d1a2b793ad57fafa8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.45/mocli-dev-v1.16.0-dev.45-linux-arm.tar.gz"
        sha256 "ffeae02eef0adb36c6fb5d91d0114bf7e5ee06a6077fd9454f3c0146782fbbf9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.45-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.45-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.45-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.45-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.45-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.45-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
