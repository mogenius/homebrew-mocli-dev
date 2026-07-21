class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.1-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-darwin-arm64.tar.gz"
      sha256 "0c5a39ed477914ae0430fafe8a860556510f945054cf030172094fba08efe85f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-darwin-amd64.tar.gz"
      sha256 "c5220fe6c99c8194ffadcee0c16a9eb8a028d9a5bf0810c3fbb56bf1e95d7e2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-linux-amd64.tar.gz"
        sha256 "fab0d6d57bd09ba26e4cf05488c35c70cd776006c5ea825fb4b68c120d408a99"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-linux-386.tar.gz"
        sha256 "75bded2d88914c0930f71389ea6e1298a47bcddccb685160e149fb3333c83bcd"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-linux-arm64.tar.gz"
        sha256 "474155daab6ccb7852204e40e96c15681f3a3341dc925db9612e8d4fdfbb5a11"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.1-dev.0/mocli-dev-v1.12.1-dev.0-linux-arm.tar.gz"
        sha256 "9d1bc7724f6d0c3b3cd36aed0f419e9bb27de16ee3adec56e73940c0cfa3d486"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.1-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.1-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.1-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.1-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.1-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.1-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
