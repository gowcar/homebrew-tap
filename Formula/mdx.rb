class Mdx < Formula
  desc "A fast, beautiful terminal markdown viewer"
  homepage "https://github.com/gowcar/mdx"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-apple-darwin.tar.gz"
      sha256 "38839425535becfb0cec4453efe56f1d33275798af516c357cd1593d7c7ba668"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-apple-darwin.tar.gz"
      sha256 "c9f53612e6ac72cf1f930fff0b2cc0b5bd4a1cc98e4df2da2d785315411dbb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5afb6b4cd75f9a5cfef0fa2c80cc538f2c91d2c79f3b7475276a65e8b461f3f3"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d83d00bce4410184c279ee989bc9fec87eb036e178b088880a21b75f76f347e9"
    end
  end

  def install
    bin.install "mdx"
  end

  test do
    assert_match "mdx", shell_output("#{bin}/mdx --version")
  end
end
