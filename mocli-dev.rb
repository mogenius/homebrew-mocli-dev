class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.120"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-darwin-arm64.tar.gz"
      sha256 "849fb7c1c55246f9173172f641311320f110db93641bae9de1782c200f423b8c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-darwin-amd64.tar.gz"
      sha256 "19187e481496e405cbdc4fe3868d60a291e9d5603463562a22f33e4f313579b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-linux-amd64.tar.gz"
        sha256 "540482eb90a29efedcceac5089baee258878948f1bf18190efe0cf16d53d6092"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-linux-386.tar.gz"
        sha256 "6b9f2ffd78cc8dc36d61244da9316db76f6345256b3ee90ec2b0ecaeea50d99f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-linux-arm64.tar.gz"
        sha256 "71cf31d3fe15657ad44f6b633fa6435fc297b1a7827d6db6a1c1b2fb37b377d9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.120/mocli-dev-v3.1.0-dev.120-linux-arm.tar.gz"
        sha256 "8630c28b9a886b42bc807e1cc1fed7064c75b7d08f3e2fb13d7ac64898640259"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.120-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.120-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.120-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.120-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.120-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.120-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
