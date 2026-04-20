class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-darwin-arm64.tar.gz"
      sha256 "f4f59e1bfb1e76011e313c1768a2bfff0bdce85eeb794c8a2e106ff1d5b743ed"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-darwin-amd64.tar.gz"
      sha256 "4ddf006a23a631b9456d4e9eabbe9695ac8f9015b9a64282a9d2f68208926835"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-linux-amd64.tar.gz"
        sha256 "ea133e0b920cff9effdbbbea44e79a6579a3e15a301a0acf7eb74c5f4e28063f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-linux-386.tar.gz"
        sha256 "598be12d054dfbb388bd9abee3733a2b77fb6a9e36248e99b3dd48df49f538c3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-linux-arm64.tar.gz"
        sha256 "c07ac90237ab57117ca8caba434797dc12fa726e38f69642ca16e06416d017cf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.8/mocli-dev-v1.9.0-dev.8-linux-arm.tar.gz"
        sha256 "876067fa6b6b4674a4fbdd17fe056725e57f3ef6d0b266dca3c8c39a2f1df1cf"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
