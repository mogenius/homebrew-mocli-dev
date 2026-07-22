class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-darwin-arm64.tar.gz"
      sha256 "4767501db4b5a4326ab9b9cae1e5f45f928ecfe7a866615103c273e4120fcd88"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-darwin-amd64.tar.gz"
      sha256 "54cbeef18bc32ee2833729a9f5fd655c572591aeb32fb905496410a1c1b4542d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-linux-amd64.tar.gz"
        sha256 "0f7e17bc103a36cbc95b3edfe24540961d99c91313a15477149f27ad32323aa7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-linux-386.tar.gz"
        sha256 "69f0d4cca1c477126249dfe61eaa1f7ce272fc6702f792f847522e06a6ed7ad2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-linux-arm64.tar.gz"
        sha256 "9af2c40184b19d25103f7d6e578235d0eff4c84df95abb53b5da0b006313802c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.0/mocli-dev-v1.13.0-dev.0-linux-arm.tar.gz"
        sha256 "c7924afc05978cd5a41fe73546413be5b90056a4cb7e8c283652fa0b0f1721e5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
