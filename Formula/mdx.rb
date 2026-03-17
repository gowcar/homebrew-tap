class Mdx < Formula
  desc "A fast, beautiful terminal markdown viewer"
  homepage "https://github.com/gowcar/mdx"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-apple-darwin.tar.gz"
      sha256 "0bae3bb1d8793c0a85cdd0ac529b8f89f8a7032856e6adc7ba8df4265a693788"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-apple-darwin.tar.gz"
      sha256 "0655b60b45380cc2ea2b507c1aef7f3b9a3fcffe5c092dc6fe717f12597c9e44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05cecba87038be480d996d3237e1ba5b0df84c8910fa57f9680e58705356a179"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46abf1bbf9c1ac9d07b4f2b3fb2506f073e16f46bb4963bd45579f80372957cb"
    end
  end

  def install
    bin.install "mdx"
  end

  test do
    assert_match "mdx", shell_output("#{bin}/mdx --version")
  end
end
