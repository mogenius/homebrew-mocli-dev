class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.2-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-darwin-arm64.tar.gz"
      sha256 "cb51c741d99e16823b06429bdbbd13297fea34b3c033284ca679395c14381480"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-darwin-amd64.tar.gz"
      sha256 "db1586630f2fa093802ff0dcc97abf87fd3d07583c62cf3720b8f62a6fb8fc90"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-linux-amd64.tar.gz"
        sha256 "5d5b8332bcacca99f2e6318f60650b69d3e705d91215702c227c32abbacc7a83"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-linux-386.tar.gz"
        sha256 "fb0750e6fd247c45c4b74f814eb60c84079e8fe962c69015c0793d12ab8ecd46"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-linux-arm64.tar.gz"
        sha256 "e900973a8d932d372738aab88d797c7ee29a2cb1281ed29a515af940c324044e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.2/mocli-dev-v1.8.2-dev.2-linux-arm.tar.gz"
        sha256 "55934a9e0190d238b04db295393745d3c244133750da09175b3e37605c3f3937"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.2-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.2-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.2-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.2-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.2-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.2-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
