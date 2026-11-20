class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.118"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-darwin-arm64.tar.gz"
      sha256 "fc099c55df1a3d77c5aca8c63518a6f29641e7429ac91154d89c2ec70009e6cc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-darwin-amd64.tar.gz"
      sha256 "9fd21946d0108833e625311f7efb38daac6793885ebf9e89338dcfb2e30bf3cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-linux-amd64.tar.gz"
        sha256 "f33a9e6118fd12c356924bbb0be79e595f29d86fc833edd7c039cb987ce5eac1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-linux-386.tar.gz"
        sha256 "55e31ce8e20109babe328cf08499b5ed12156552beda7890979092c14dea4ade"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-linux-arm64.tar.gz"
        sha256 "0c7b7329dfe6f75dd5241c030a85f8023e91a4263536e1001b5215683f3f0718"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.118/mocli-dev-v3.1.0-dev.118-linux-arm.tar.gz"
        sha256 "472e2209756e3f86dd4bf486815f8c5103426317ceb23059207dea82821af6f5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.118-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.118-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.118-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.118-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.118-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.118-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
