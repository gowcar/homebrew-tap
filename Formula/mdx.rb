class Mdx < Formula
  desc "A fast, beautiful terminal markdown viewer"
  homepage "https://github.com/gowcar/mdx"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-apple-darwin.tar.gz"
      sha256 "460997fb458778b0d91ea8343da4e05e7aff72d600e9eca8a2fa6426c1e33a69"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-apple-darwin.tar.gz"
      sha256 "e649e2f85c90d530d9600029b3272c9cf68c47692ccbd7284f718ab235a0e903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b67b2752e0dfbb089f94f97068020293feb1a2c7376a59c274a2e67c746ec14"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b64b3d9bf00496a3a42b778b8911a76d017bcfdf6cb034985255cba9ebe7302b"
    end
  end

  def install
    bin.install "mdx"
  end

  test do
    assert_match "mdx", shell_output("#{bin}/mdx --version")
  end
end
