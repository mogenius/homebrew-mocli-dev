class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.1-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-darwin-arm64.tar.gz"
      sha256 "207c0c06cd6ddaf196bd3a4251ab04e6a9fbc143c03f6d0bc343cf64b4d9a2fd"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-darwin-amd64.tar.gz"
      sha256 "098f25e8c3b511abdc6257e31b5f5f33754ab7f6b1c412b4ee58d7dd57e409b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-linux-amd64.tar.gz"
        sha256 "f9151a5a375a6ac30ed7fe34e2f45f480cd87885f1eb68a202c675a7bf6b03f0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-linux-386.tar.gz"
        sha256 "4527dc057a37a1f82ef26750a996b22dd729e7ff612682dc2c3679fa6575f292"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-linux-arm64.tar.gz"
        sha256 "85fcbe566cdf4342d4417ccbad8f69795def9d09ef4c268ee8312d5506bf2199"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.2/mocli-dev-v1.8.1-dev.2-linux-arm.tar.gz"
        sha256 "7ac30614a583164ab5cd1fe3f862c3658dafd9d385dde6428fb30f2749253bf7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.1-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.1-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.1-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.1-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.1-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.1-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
