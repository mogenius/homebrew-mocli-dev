class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-darwin-arm64.tar.gz"
      sha256 "e88cce34805a254bcbb83f707e190ba50ec87fa4d430304f170679dc8fdbeb97"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-darwin-amd64.tar.gz"
      sha256 "b73b993d780c0b0cde38403b35bee48804d7df18f76660cb13d456f65078fad3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-linux-amd64.tar.gz"
        sha256 "559c0094c76d69a63d28b81f3470f08bb1ad8188a33ed3c85d5ae50c11b4b498"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-linux-386.tar.gz"
        sha256 "ba2987ed704b2b02db3e935d709584a06a1e510efec76cab3f1aa0c23746fb9b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-linux-arm64.tar.gz"
        sha256 "9151798ec82173f2234a5df936fad8b81b8877e05aa06372491640c86028d8ce"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.5/mocli-dev-v1.10.0-dev.5-linux-arm.tar.gz"
        sha256 "04ffd067febee2334dee355d08cbbf70ee810565c2b4092efeb639b62940e31d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
