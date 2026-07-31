class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-darwin-arm64.tar.gz"
      sha256 "567851e9b8c153c96ca15b36107266941502c4968629ab3b18767e970c5da7b2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-darwin-amd64.tar.gz"
      sha256 "c9943addfdab6bf0731919136bd6340e87835d0cbc6f7bd7f241f6a5ddcb68c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-linux-amd64.tar.gz"
        sha256 "70700f3ae344ee834640a47ef80d0f033015ff2ff370482c87d316870357409e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-linux-386.tar.gz"
        sha256 "f6a9b6f6be3fcc2e0f7affb859a7e9fc42571dcd69db2a856d6be4787ef569a6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-linux-arm64.tar.gz"
        sha256 "5b40c258272cb344852dc7481bcbcd3fd413936f0a6364cb73765eb05e6935d0"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.4/mocli-dev-v1.13.0-dev.4-linux-arm.tar.gz"
        sha256 "988273f790be33d467700a2cedd00c6558d48b32572477504b294306b556b54f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.4-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.4-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.4-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.4-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.4-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.4-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
