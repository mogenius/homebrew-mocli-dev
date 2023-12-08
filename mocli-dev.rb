class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.7.7-dev"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-arm64.tar.gz"
      sha256 "39c677fc47a65f054db64b3d23fc4daf7bc85eabe15f57dae345e4e75ea54592"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-darwin-amd64.tar.gz"
      sha256 "0f421419ea445b35a582377110bef386391f61eee5d1631e1e13889db90e5a39"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-amd64.tar.gz"
        sha256 "81f64044b0f69eb4fa3a716c9ec17ef4ef8a02633145905c8519e692bfe26cad"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-386.tar.gz"
        sha256 "2bcddc4a62c3619c7f80737d4f93d7ee315ba165f8fc73c847addc351e80df23"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm64.tar.gz"
        sha256 "6dc487c96b53b24fe21bbaad9bbb4ea8d916593d34690bc016d44fbcbd525357"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.7.7-dev/mocli-dev-v1.7.7-dev-linux-arm.tar.gz"
        sha256 "62816584ef40db88466b8da1528d9c6bfa0d0dd157370e74237279018311cdf4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.7.7-dev-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.7.7-dev-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.7.7-dev-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.7.7-dev-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.7.7-dev-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.7.7-dev-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
