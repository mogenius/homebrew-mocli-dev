class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.11.1-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-darwin-arm64.tar.gz"
      sha256 "6b7d2338668a70d7dba82f5853ab3e4045d5982f6f40c71a4a7c055857010be6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-darwin-amd64.tar.gz"
      sha256 "633dd1fd0e46936323ddbf4e8e0d11f133f149602c6ad309aaa7dd7419cb9044"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-linux-amd64.tar.gz"
        sha256 "ca205547427b3ee8bb022dbaa0afd3b56f9732b80d4c1986590db6126c8b9233"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-linux-386.tar.gz"
        sha256 "1cb85520bab012b321eb3a949f28f244946b94f914ffa5097fbc1db6a554e37d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-linux-arm64.tar.gz"
        sha256 "26fdb525d1c8b3294298f40ce1943ed0c9b4bb699dbf16aa1d804acc4b18d551"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.1-dev.0/mocli-dev-v1.11.1-dev.0-linux-arm.tar.gz"
        sha256 "1e484176b82c84cd2d6b6fab4644b0edc68204c4b0ac616cd0d2764a3be59481"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.11.1-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.11.1-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.11.1-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.11.1-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.11.1-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.11.1-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
