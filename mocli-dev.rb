class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-darwin-arm64.tar.gz"
      sha256 "c10e5889c130222e8c7836ef7879d53e5ea86b651fbc51edbe73c2ccecf54bfe"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-darwin-amd64.tar.gz"
      sha256 "d50e5c858226afc903fc119d0065ea4b204773b59ab22f8d8b5bd900ec16365b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-linux-amd64.tar.gz"
        sha256 "5567838f4661fb39da131c0bc97dd2dbdb2b0b72fb84a42764b4e06b5577c45b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-linux-386.tar.gz"
        sha256 "5342cc367cdcc9527dc4edcc017152615de67d1402195cea17052b0adebff3cf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-linux-arm64.tar.gz"
        sha256 "e72d09f6d72f8a71e4f51c6f32696611adfc3eb7c4d142fcb5682a4fe8cce18a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.1/mocli-dev-v1.12.0-dev.1-linux-arm.tar.gz"
        sha256 "16534163052ceda35a7bf0d88f1072b312166d299e881f13ecf60e78152a410e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
