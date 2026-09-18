class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.47"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-darwin-arm64.tar.gz"
      sha256 "341a0adf9a8c983f80cec6a8f1903048083b039ad240d1a0eefbe28ac0800556"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-darwin-amd64.tar.gz"
      sha256 "983a3514e608b9fe34b72aa3cdda157d8c048d6e704b311532a214c5d9f05cf4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-linux-amd64.tar.gz"
        sha256 "f66e543ff97f26cca1efcba01a33f7e86528f9161ca103a388f30823f639925b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-linux-386.tar.gz"
        sha256 "d99b8965d417d764420204366a2aaefd01ec3e9b9278b7f7ca1590717654a31b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-linux-arm64.tar.gz"
        sha256 "99fe77ff639bf03bde97e4386c70a0f31943addbb92d63bcfb33d63612a9ea02"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.47/mocli-dev-v1.16.0-dev.47-linux-arm.tar.gz"
        sha256 "d936e8fec587bd15ead90911fa0a3546a11f712a7f5bdabdeb30af123ce31633"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.47-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.47-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.47-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.47-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.47-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.47-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
