class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.1-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-darwin-arm64.tar.gz"
      sha256 "60a6329d87feefc013770bb3c7fdfff49e099e867466d1b99b83fb3aaf59d4d6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-darwin-amd64.tar.gz"
      sha256 "0116bf9a28c328fc5a0171e8b0600629f497d2de911659f46eb330a7580754c6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-linux-amd64.tar.gz"
        sha256 "033a41c1ec4d9bddefd5c95b3b4087c16add3feed1bc325065fbd02166294a07"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-linux-386.tar.gz"
        sha256 "422ffb9f4a47f474c9223d43361988d894a50fcaaf00de03d0ff596d77b14ba4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-linux-arm64.tar.gz"
        sha256 "224c38acb9d10a66972a2b9532f150547039c41457b6d4071a459c21f79b5063"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.1-dev.2/mocli-dev-v1.10.1-dev.2-linux-arm.tar.gz"
        sha256 "d0d3e863003093fb5267b5b7991ee917b7b3d37d657614aa29f4adc592673014"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.1-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.1-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.1-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.1-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.1-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.1-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
