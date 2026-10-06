class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.68"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-darwin-arm64.tar.gz"
      sha256 "a742b9b3f1a5155e6ffab185634e1e77688e38d2f5c753cfb0d18690d4d21b7c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-darwin-amd64.tar.gz"
      sha256 "6cb4c12f9928363d5bf3b566e8df8f9a83fad1cc32157b8e46f21e79ee23f9ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-linux-amd64.tar.gz"
        sha256 "fe0187935e33e5e28639e929817d30fc5a2c1a271bd1463de40f49a0777ea5b6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-linux-386.tar.gz"
        sha256 "3092fcb77a97ffdfa6c9ddbe0e7479de7c629f6df1ccd4f86c31f51228e69ec9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-linux-arm64.tar.gz"
        sha256 "46052a14ac64d7b9a271649217291f966356cd269885649c22fe230d5629d6dc"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.68/mocli-dev-v1.21.0-dev.68-linux-arm.tar.gz"
        sha256 "eaf89d470156699920234d3e91684612e246451a43eb6835b3465aa99533adc9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.68-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.68-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.68-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.68-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.68-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.68-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
