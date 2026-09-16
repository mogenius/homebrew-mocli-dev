class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.15.0-dev.28"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-darwin-arm64.tar.gz"
      sha256 "3f93eb4fb5fe147bbd17ce381c9367ab9821698eb9b672ec2ec8bbe0f897fd55"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-darwin-amd64.tar.gz"
      sha256 "db815eb288ac6f53c7397d917fcff27a87253d2554bd009c54d4cd0b36fa4628"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-linux-amd64.tar.gz"
        sha256 "e14506b8ffa5f141fa964a64073a3216439a7a1e20aa16ec8b461bcec8a6d98f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-linux-386.tar.gz"
        sha256 "c6947b2535f2e6dcbb0de8f950f35de6403f75b1c93ae4efb88388fe5576df93"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-linux-arm64.tar.gz"
        sha256 "34e74563823af55dac124bc0f419b08d4bbb640b762eab47c5b11c37edef40cc"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.15.0-dev.28/mocli-dev-v1.15.0-dev.28-linux-arm.tar.gz"
        sha256 "3fec27b779b8fdacc473b5957eb6fab4ddc6062e7052a47f12309bb2bf0063a7"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.15.0-dev.28-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.15.0-dev.28-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.15.0-dev.28-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.15.0-dev.28-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.15.0-dev.28-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.15.0-dev.28-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
