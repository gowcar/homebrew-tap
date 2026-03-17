class Mdx < Formula
  desc "A fast, beautiful terminal markdown viewer"
  homepage "https://github.com/gowcar/mdx"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-apple-darwin.tar.gz"
      sha256 "11cb5e7bcb5d33a21a4f5ee672803c1b52d56ff0a3763b48dcfc34867fac96e2"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-apple-darwin.tar.gz"
      sha256 "2b73499b34193dfbc78c910d846f8298ac6cd3c5547732c1deb27fb63348f522"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "546f5f3abc3ff6fcce1b5fabd12665bd5ae5b02c491c05abb434c7f6c4ce66fe"
    end
    on_intel do
      url "https://github.com/gowcar/mdx/releases/download/v#{version}/mdx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a47d053756ba776912d420c842755f5cf28b01393b80d3750f699f0075574d9a"
    end
  end

  def install
    bin.install "mdx"
  end

  test do
    assert_match "mdx", shell_output("#{bin}/mdx --version")
  end
end
