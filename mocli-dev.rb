class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.109"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-darwin-arm64.tar.gz"
      sha256 "150fc39bb950909cfd9be8dacf46c975fa102828debd7f729dc79bd3b1d0e624"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-darwin-amd64.tar.gz"
      sha256 "465e5687bfd586a9b40cd398e32a5607c365743e499c07d47475f57dc78a6c03"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-linux-amd64.tar.gz"
        sha256 "8e589ff0bfe90d957cad3f193193e564db5658f1695ff7683616823197c55483"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-linux-386.tar.gz"
        sha256 "401852651e7cde56c68a21181b2be8d324cf8557a5f0dff963a53305dd0ea260"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-linux-arm64.tar.gz"
        sha256 "2506247448e7bae68426168da6cbf3bba198fd36743f4ca274a297e254c012af"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.109/mocli-dev-v3.1.0-dev.109-linux-arm.tar.gz"
        sha256 "ab0702506f472fb24e8e2d0bef90e0d86e4c53649079632ba81cc83212070c82"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.109-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.109-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.109-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.109-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.109-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.109-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
